Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38BDC63B9
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748560794; cv=none; b=m9IOKLSNOfXyAhyuA4BhLIJD+b6LhgkA7PdvswHQ6FwOgL7DVhSJ+W90WI62mp0V/xi0JijiHP0wKCJ4wcaCoK11Rmkk+iRr7xIBWHNHMrlUJgbXhoKUUKQbseAR3flaxEGZr6DIl1V0Afl0tqTmcQoNL4OnAA7amsgbmtGqeZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748560794; c=relaxed/simple;
	bh=uwb3DHpFow7s9KOeZNSQ1E1AmzJjrUMWNc4VDR9Fz0U=;
	h=To:Subject:From:Message-Id:Date; b=EQzBj+7Z72Gi606UVxU7vYlcJEFBG/FjWRN5N7LcQxqWQfvkhTXi7fGLeal2dh7zlZVnANpis5T2CX9zx2GwX9W1sw8Roly09dGmbFxtr12WmdWLW/IZS7Ml8G/erPJYbtU5+a5PyYE7sl/nIJtG4vqj4eA0WWH2TraWb3EMD1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XmQzSVav; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XmQzSVav"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0359C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748560793;
	bh=uwb3DHpFow7s9KOeZNSQ1E1AmzJjrUMWNc4VDR9Fz0U=;
	h=To:Subject:From:Date:From;
	b=XmQzSVavarP/OLzi5DKgWjr5XB46iLkPbFP1rslrOilZ08l59AduhcIXQj715pBxf
	 5jgl9M7op+M4TugelMFYNQ2Zzdm/zj9jL8+NC8VMKYN1N297dC3wXcCuj9ciIAoEt5
	 4dN7mOqF49v8Ao5C3QMSCS6U9pNKIqDhOoVomUiaJ85fB/A/matn1Jj6uurAQPBEjR
	 HSMf8o1rtjX3R8YYF785+jGYrPpvt06E6Vm92DNOLPZTIwZoU03BfNTdKA0czRdZlj
	 0Zxr7cEPwGoEsVYF7SRYiXDVoUZCNbJTAHqQOe4tJI1ANfLTPPQGG32z6S8ZE0S6SB
	 PiMPg6VTc27Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7B0C54FB3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174856079358.4061.2364848458351569092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c30d8d4dfcac483d3ac88a90c01c3b6d774523e733d3cdded76659533859811f
Date: Thu, 29 May 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748560793
