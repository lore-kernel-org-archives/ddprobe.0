Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 373B730CDB8
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756269594; cv=none; b=FUPGu0b6I2RLjwt7Wo7cLj04Sij7tc3ye0wLLcvsVX44eLQ7XBqLxqK0NeEMjed78yccO+kY1+5BXMSn+ctGRzcpqJUUpQHalsWkTWhirBcfOG/ETVEDXlOi1OeJy2zEp4lvatOj7uPxLio5UaRPU0kY2Zj93epmPCB2JJ5Lask=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756269594; c=relaxed/simple;
	bh=8RjFWtRIliKwUnKmCPjz6u/ckmFDeGYvxJtPQv8R3HE=;
	h=To:Subject:From:Message-Id:Date; b=WSC0gd1WSEMhPEam9G0bne5N4RQEKckcf0wgMKV7jTl9Z3KxmR91VgXVpA9jL1nXJJz/Fd2CGmofVz3NsISdiZ9uVtAleJe710tRpTGxTHpaeY3qogK7BkmprE82r7CpTgzGv7/HT4xei8VyDcA6faTqHyQsJKSPyX3aJjn76TU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XnvuPi8I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XnvuPi8I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31E4C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756269593;
	bh=8RjFWtRIliKwUnKmCPjz6u/ckmFDeGYvxJtPQv8R3HE=;
	h=To:Subject:From:Date:From;
	b=XnvuPi8IcBsmcFUtO1IXY408leISTpHKg7W2j5ruy4IJODlsVKPoDkaCYmeBvh7+L
	 16Y9ueXjh9CiQCl6lT2Pm6kB0HE6NPkmIwkxrEgnTNMS4bi1ubQYwhnsYBd7Nklxr1
	 lgoJhwmOAS5RuE1KvPJjGQGUYPhcf/OldAyQtGXHd4gSoXfUGCS1ReOYTOc3rfTUPS
	 z2TNHRw1KtZhuXyat7dMRcNgqageqHVMYCub8aVxPVQW/8Hrcft+nW1c5JWgNphn9t
	 QEg5w/KbImV4R3y0XQezr9QhhIVwK1syNKD6DOe6XgF30DnFBV9/pwa3sSVn520pHp
	 0RRPLScL0QSHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E02CA0EFF
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175626959358.16127.17369114248860680886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2aedc5c31c539a209f9e1cc22633025a3782a22773a84e9a16a925e542cde8c1
Date: Wed, 27 Aug 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756269593
