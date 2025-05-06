Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B843F27CB31
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746532793; cv=none; b=EPIh6TPK+/jjugI9HdSj/LXf8G5pChOEySJXoHVmNbMornvnpozSiKFFXIlKGzUfmA1cZpoyJgUNezTQtt/YJ+h4B1ukM6C8tE9Cfes9hNypLGgnxBinsgaCqMZ2zRYk4vAagfB4ptsf1TLpHUmekni1Xio5K3H3QtJaABMoU6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746532793; c=relaxed/simple;
	bh=NkZy4Fd2pTKe+dM3tMMvZGAgnNcpjeeXlNiENtfjuZ0=;
	h=To:Subject:From:Message-Id:Date; b=ma8G+KgI5uVKynl0z6ihLIEyRugwm0r6MIEsISISqp8ac55JdQNbZKbWG/QtaBBbqgvekQln87xfOnUeuFjGsMEk00Ov4KtuFRoY/Qix4eFEJDi4Wo8qHWQIJ2mfqXr2yjCavZWGTlCHIDFRCiolHzBRq4N6qlKFZIe5WX1IKCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wd/0wTWU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wd/0wTWU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BAC9C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746532793;
	bh=NkZy4Fd2pTKe+dM3tMMvZGAgnNcpjeeXlNiENtfjuZ0=;
	h=To:Subject:From:Date:From;
	b=Wd/0wTWUA+YVYyT2VmmDaCSAcc8nwnlA0IWqz3BrSk1lySbKeekNZESqygGEBEkjY
	 qzQNM7MST6fA6vYDhYX88ZziidC28uybSdv5u+Mq/A/DFNryw88Bp9Pphu+5s27xq4
	 O64sUbavmNiRstL8HSgR5BkwpHC7yxfZimAv4yIBW06uj9a0qli4dmUQ2mNg2b/p/t
	 BJZGBIsvp1l60lBLM+DEZtvwm1tmv4ZGhNySd5JK1JeT63WPM4BltlSZgL2PIvZnaw
	 +Rt+jE7kKb2jWu9x7bcc2Hqlb5z0AkAgC2lDwm5qUmxuJOBivSSccjUL4pPtAHOUBX
	 lqYjcBetm0bnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E1ABC3ABAC
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174653279357.23956.15033490396339482491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5746d8785c2e6d3366376a3e9ffa29e849eca86cee6499d8aa3bc260a4213959
Date: Tue, 06 May 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746532793
