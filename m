Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 484E218FDDB
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728473754; cv=none; b=bFvvf08yRlOUW24yA9TTFJJsFuKPK1bMOqpKxP0Azti+7SUQ/Y6p+2j+x1ZWFP1ILzs1kAXbb6RWA3ER5h3JypPh014jdHxz8dbgRATHP9BCWWZLgRSzVNsgMH/ix1ufnZYiXHP4XeTqty6J9dNw7nSqxNuFi4tbypi7/UdvkLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728473754; c=relaxed/simple;
	bh=Yn4vSaqM72l4yUeNZvvnr/f11sByLsyyVzX+uVxLG80=;
	h=To:Subject:From:Message-Id:Date; b=jVuPsK0an634i8yfh6/JsiYj8UhNeXiprVGE2dMpaRSLkvhPRtIZqOwk1cH3YJK7ZSFyHRi6/uBXsq3ULfuiaYOGjeGkLIFKfnYMj7Rg1hZXPyv/cSnVTlYjeuYbmGiWIlI4Guq1fu3DpWSPeRnprPbFMWA1Xm5vMPcFi+B2p7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CyWtvPoG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CyWtvPoG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2513C4CED2
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728473753;
	bh=Yn4vSaqM72l4yUeNZvvnr/f11sByLsyyVzX+uVxLG80=;
	h=To:Subject:From:Date:From;
	b=CyWtvPoGNDcfadNiEnEI2JDrEFKhEJI0K6rqJsr1sj0QS5HgCOW4zmEX0VSDma4//
	 GbJP71BI5a52W90ItDgJvKEngf8mNS7v2kX2+PjhdsvoPTP73Na4/EqniSEFFtoQwT
	 jEAWqRjkXtq+IdHbJ2r6gPbVwH8EGXUXi/CsxmPu4nXEfCmUt2rVw0rDYpHVlpmeKE
	 9tQyOKpTYbz6NTdxj25/o3r0OKScNmBatRfiYCqRFJAEgQFDV9Vv2u8km3hKqaIvtZ
	 A+IaUNmXoPY4PMjCHjAUbvXStj/R4yGuickYHkcpJlhG1Edba+6Ou0cmajTOq59a89
	 JkrNQxos/dACQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E922CEDD87
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172847375363.15108.1665451294899343381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f728f8eac91fbf3a803a93d06cbf25127518265805ca458440868baacaf438f3
Date: Wed, 09 Oct 2024 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728473753
