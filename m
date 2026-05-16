Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 397943E4C8D
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 15:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778946034; cv=none; b=Q8QxAUAzhXccCq8C/q+zDmQzv3OClgCIcS1FHimN3Z0+GcFBbTfl0xHvDPX9IJBtfDQg7AcjtxJ7hDjkK31XJWYhiyQgo1v9ocpWlmuO4bsDv1ZDLdxIpG1oy3cc+qqmbQKEZcSMa3glVaft+/oNfWY+8J8ycmb7V5LNmrsOQqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778946034; c=relaxed/simple;
	bh=JB/Nchd4RAl8kREVlTOEenh6/Rp8X3jTIYMu6bW30/4=;
	h=To:Subject:From:Message-Id:Date; b=Md1qpzNrv4SfSghrmK4FqOvg0ixR5kKyzFS1l1agJMFYeDbqDnnkXAvw1axbD8IBBIGZN/TqWKoU0t23ojFE6zXHCPMxD4nv+CAWENgoRbA81WBoeC+kl0kPd5eFVEYGSgWU6gxWA/skGF1SFuiL4+85PPDNCM6CpVeIsDKxUbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t9aQM8Sh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t9aQM8Sh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6D54C19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778946033;
	bh=JB/Nchd4RAl8kREVlTOEenh6/Rp8X3jTIYMu6bW30/4=;
	h=To:Subject:From:Date:From;
	b=t9aQM8Shwh/qRn6KZZt182VtbQjr0SjNwTMJ/6/EqherGpL9LRfjoqgRsnid0mavH
	 2hFHSCyFJf6Kn26OueMY86EvYdc8ZvytlG5QTAa35Dvkuik8/uIhoxAuTsSr23AX1M
	 ICZ3s1BwuPN2viyrSl/0NfYgh0pK/pnjiPOlJhC3dH+xSEGNoKdM64TBvlyKZ7vULE
	 cUiv7F5AmXlOVDb1Dcc1V7lCK6lVzgotJtndTdpVzTpV8otfYNRp56Il2lgSUKxX1L
	 Tsb0xG4CDLwPlEZECDwPiXYOIC2pbs3lBl+gC5mswzxhqP4VW06AErzxvwDwfWAj2H
	 rRtEHMJOcmH8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2580CD4F3C
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177894603369.3406.7857539561520768185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1373063cfb65971dbf915cf6e4a9e304624d18db25a25af1f4d06b786266a3e
Date: Sat, 16 May 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778946033
