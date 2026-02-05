Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B8982ECD34
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 23:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770332634; cv=none; b=YuhbqlsMps7IWDkWQUE3pZOsuEvqboihNt8Lrj01PxI4iGiJPwUCRPE8S+5IHkDchmL+UuWm7G9jgop46Pc1kZ+rLz/aGGRsxR4Cxr9KhVBOj0bIAjFr3IUueBBz4ZBloO2/Lmm4DUJq7dhrG46WhyIRngoUhtwYbehQd1237o8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770332634; c=relaxed/simple;
	bh=PkrSy4GBtbBm+8vKfACf2paoxyQ88xxBjafrG87leCY=;
	h=To:Subject:From:Message-Id:Date; b=A4iTFFQpG8Bseyffp1JD4s3oDLGtoI/YJbXnT0KuYyHuOmxurNfQFbY99Xw8n3FmzWuh4tSxkGiM3nIYkE1kYqDQP1jmBr5iT/vP02wLUt4ZAoBEMPoOwzzsOShjYldBR1qjxy0KrO6i5X25VqwR2zcMSYnCgkD6K379pkRDXvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tqo4jn1D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tqo4jn1D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB087C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 23:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770332633;
	bh=PkrSy4GBtbBm+8vKfACf2paoxyQ88xxBjafrG87leCY=;
	h=To:Subject:From:Date:From;
	b=tqo4jn1DWX74/ZT1CHc/Ka0e3APgCCMmmcfkMmJtbbZdNrhrc5YjcR5PTGE8j2YL7
	 Tjr3dZvGWgTgQP/cMAW3L3RvQ4JzDphMdyaEaZijai5Vgdr0N6fWadyGGG7MZEwKs6
	 aHmyaSTPyYE8iyvZZfcmlaHl5LSefXn2Gw+Mfxa6tqegrjC/Jd2Q4SZmQ2S4zDEBwS
	 6XD3YhdHjIYxmT96i6WPGscS4Z4dG5Rfmi0crXQC1Sze93Dsv+Njqp1Qosyxz0zJCy
	 pUyGl0G54lBAKuDAJhM4KBpYP8+anIGWNPj7xXmk3b9EF2WGXK7VDAHy9ln8eHxWd6
	 gEE5Bi49uKf9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94341ECD9B5
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 23:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177033263358.19585.7643556201802391284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9168462b7a2668eac88dc3061375cb39f25bd17f563d1356c43a439166eb240
Date: Thu, 05 Feb 2026 23:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770332633
