Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4163A268C41
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744215594; cv=none; b=RHxiwOGX/Z3fLcdIimIZMI7XuMl1W0fQvtW6SxzTnKpna3/xpM7oVl5NtLdoqLOVrpTa+oeWYOorkpM5xnOKso8DCdSQzPcTOeyyf+lMFJTtLz6ZvRbRyvL8ZM53fSyU10Psd200zD40dduQvCxL+putRuDDFBklSl60Gxp9Dhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744215594; c=relaxed/simple;
	bh=uiUSZehyYQpz5qsCVnCdBEvjbqKAmV/skLaRc6RbpUM=;
	h=To:Subject:From:Message-Id:Date; b=d8dG6wMd8shvxZinmW7ZwO7vh38ezXBZ1Ydf6SuMPCpN3QDY/SBL1uvWQud5ktqsuTgh8nhvVkU/S9HGr+SGXY+wnP2D1RmWfIgRRV4VwGMi0mrWpbrXxFWC1Mrmqo3AbRBxu87bBcyARKCRZsYz66IHp/c2OIMtMIfImxH6ZHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bn2D9DWD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bn2D9DWD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE77FC4CEE3
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744215593;
	bh=uiUSZehyYQpz5qsCVnCdBEvjbqKAmV/skLaRc6RbpUM=;
	h=To:Subject:From:Date:From;
	b=Bn2D9DWDZghrSiG8NCbVs2SU2XQe4CPYdFf3+bFuDguLG0vF5bI77x6p5HQ0QRPKT
	 VXmYF7IVtSGVjRJ64dlxaEb6FV0tefs9MHbUVIVezYADRuX/sD+eOenEpzPRkodGNj
	 2Vx97+H7jYpwmdQ8g8+nPX/szacUthA+kZSunA1SR+SsdslvPPplQhSq732iJxCqTs
	 B1Z2y+aIoVAF5Ie9cQAd8eR9LNVIxunE57ah9+CVmHG0CFVkjY4mhu+t5pMJe397Rz
	 hgCqpgcrxrErITQ799zr5QZtW6XXj2BO3ODZMK6ETEMNPT9u3hBMRPF0rILFjlgOkB
	 DwHzstAM+pCEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC49FC369A4
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174421559369.2928.9925762089143173887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 570a9d605277190d0dc95db43208534ad9b5c195beaed9253b12462525f69560
Date: Wed, 09 Apr 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744215593
