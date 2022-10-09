Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D08452579
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 19:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CF8DC433D6
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 19:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665344453;
	bh=Ssp07gSO2HW8jARdJwLRICKze1Ngx8hKm1IYvlGscao=;
	h=To:Subject:From:Date:From;
	b=LbHeijz2dIr4L6gr8QTB1ls0PqBRtRprkOeyxhrNk6BCM8iPdv2GNjqel/MujWG5y
	 RGaoeFvI0Y6949mqWoQGDzGkm+wy3fa3jW+MHsSqt+VdQLz4q3TVAFJ+n+mtnahRe9
	 9HnfT6CYn8zy5QndJDCFqv5i5bhMizZn5R1hs7MS6mZXRKBMoLDH2S7Fa50gAC5DVy
	 5RTxd1NKr2cWdkKTC7E0XxMPEJnKn5N/Hhl3squViv12WCgyL6OUoZsjsi7L/QiM+b
	 XKOReUWWIrV2KucrOmz4Zdx8hJU8SedYkWeyVpMQ+K3ddW5cEYJ1BktKWo7sX26Jlk
	 IMBoYtO1zzWvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F285C433F5
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 19:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166534445338.23658.13745324485931300773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ff896a3aa167a408554c6be66baa4b7c1b5e4361f9b0f6f1e352bff92f2be83
Date: Sun, 09 Oct 2022 19:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665344453
