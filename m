Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EF431945A
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 17:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fkrmSHRr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 921C8C433C7
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 17:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698773296;
	bh=13FWQIfcBG78YzRgibXopydtxd4ei1GSsZa26+FA3N4=;
	h=To:Subject:From:Date:From;
	b=fkrmSHRrqbcnonsu3wscNCRdPMMIHWydZIhzf7cbiLjaXpJkvWSUGepcXvDV71egs
	 kFs5uWcqES418GGJMSTNk6KPc+ivTLUr3GzogUy7/pBQ1auVeh9FXJIJXhLGQHm5QT
	 0ewGPhrReNDe8BYzYYEDwTM3xn67+WA6nmkLAEOELPiIk4jYXJ8Dl6narV2qHdNeXH
	 LasAF+pSiBNqoEwxxQ2AWPIq69BGBV6d9fGRq2ENpmXI6vuCw/DeRQvulPXw58wNAJ
	 F7l+t0AeE4BTQcC5tcIY0QRK0gF9gImhyA0cWObqSZVdf9r/7yb8M3Ins3PzCAFtEz
	 V9oASAGo/nUFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70AF6C4332F
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 17:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169877329645.3831.9318570190122420867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98006d8643206415fe0c9380e62435ecebfc08bae1f3f0e522f026ca3683e802
Date: Tue, 31 Oct 2023 17:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698773296
