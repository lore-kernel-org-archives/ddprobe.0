Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8CD37E
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 02:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80972C433EF
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 02:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672626087;
	bh=2lM1yptTgVFaieL7BaKlwVqeGNnasPDVVAi+moczzTs=;
	h=To:Subject:From:Date:From;
	b=EAo/A0r2qpExuIaKQ9GspXAY9+b8tjEUK+yYPnSBv41HNG/u3TYAL870nJAabz/qj
	 JvA17FP5KjSQU6qTdNsUP9piNPhQL+kBd4lwcFdw6tpAcmkUEi50PR5Cc5O3Cb2vwv
	 OXPErHPbYYuWNS+pWojHkAxoDxoJwu0m1QZ1DcVkR0QvdbXLGLfJiYmmWwTbB+WVOG
	 /1zPKeUCcMmDRtpHOSM1Pwc3OLdcJjoGBcySVCZHStLLPc+1cKeXXqfET6yPmhFI6C
	 J9kx7QwYWqQ1glzhs7KyLGN47z4IlAptgj9a0VhhgpgQoYg7Y4voxzmLVg6qZj2ZPJ
	 huxHv+pS+gGxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 625B0C4332F
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 02:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167262608739.1089.8675457268336043110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5e5deac36180739d4486bed7c5e6a7a450472b81523995b5c2379f6415c1813
Date: Mon, 02 Jan 2023 02:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672626087
