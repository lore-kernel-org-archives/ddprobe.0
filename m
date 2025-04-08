Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 591DC26E16E
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744114794; cv=none; b=Pe6aVJhwKZfi5Lx8ftqHDYejJgCBN91+ZwCqnOCcmM787BDV3RVNW+5XO24c8Gbyy9Zh18kyvOh6KJuLP9qpoeIpWukC5LayioghGQAVzNeKyIZ54uUKiq5qP8Tmv+dDc6ps8zzmokkjzsHsZgI6yiGXp3iXT8quZ/wFbFzir5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744114794; c=relaxed/simple;
	bh=3F6gw1CREfupomzJsDOGIqy4co8o7oXtllM9kg6iYvc=;
	h=To:Subject:From:Message-Id:Date; b=Yk6ru6DlcKTV8n7TlowxD3Jb7Z3bNy6D+bPSwtn7rsGJktUWuVz8CNBzN7M5QLBCbCbDDYTproyQQighus9H5nhL1OWgnbVTJmncufiHbVue5aa4gZ3M6tEYXQcSd5sPo3hyxPdI++Bx9hBVnYrYjU8Iu8Ffjn4sdjT+TVENWVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZcR8nCz2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZcR8nCz2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3DE1C4CEEC
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744114793;
	bh=3F6gw1CREfupomzJsDOGIqy4co8o7oXtllM9kg6iYvc=;
	h=To:Subject:From:Date:From;
	b=ZcR8nCz2OMQBj4q5Jwhn3LUHi3q6MKpN6FpV802gHi9O7hONzO/nL9G8oFWftMwIm
	 jch4e0PLREfHa13gnjyCyUGYHoFTlAGW3j1OwKpC+yhVuWAIGivJT4QT14gjbTEp8H
	 RZWK6ZK+CmGXG73Jg5/VURMVlv1AXeLxAbwGitljMkQRGY9qAtskmIm8uCLs/4cxSW
	 Q3korM1Hi0m8zZ0A4kKPGj2CzE0nQQwSrFmY5uoTHV3Ux3gvG3IGP5uEYw3tzY5eSl
	 tRiPIjwiKF1FXSgPd8sq5mXKDioutUqMd+wDyos/Pgvjv+g0nQpDBpXcTrgkG7TRKX
	 2ArNFn3/SNZIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9385FC3600C
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174411479359.13709.15110743108530966305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01ca4955bdd5aed94729f5c81f5ee1be2420089385469a9604ad732fbb6e7117
Date: Tue, 08 Apr 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744114793
