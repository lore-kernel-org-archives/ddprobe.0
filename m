Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEE7FEA6
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 04:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D3F5C433D6
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 04:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669092054;
	bh=TcwdjkpouqVLXglyZf9jV02V4vwVFzrz65vMqubUS9A=;
	h=To:Subject:From:Date:From;
	b=Zv5eFS+q0uq6hqGeJlaDxu48nW9LDVZBwz9gbx+1LM6crsA8JjtHSw84AArXEMoHT
	 zfHuLi489pg8T1qRDAEfLKL/Pboh7V6sLUcvol+T1qQaSv24zXbfmq6O1HxIUnh+KK
	 P0dM9F1Cpl0pqYOF993K4V1nk0UjYNoSiNwOZIpoBGfO75xfhULTfMeO+g0IKnDb5I
	 Lj83Xf0kyD15H5kzmGg6IcimUKS9weR3Z5lYdjGRhdgi7tRQZ0adGIkNdutlNRHtL/
	 EN7b28+PPnR88Ilw0o5YPGT9k1DBXZrImIDhkPY4P5yfHMNxGFOKiE621m2kavGm+k
	 fc7zA1nxCSRpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53946C433FE
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 04:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166909205432.18227.3441404718394811832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3ea7d7db473508333e73519284edd1c357cbf5f644c192655d67415b8d22008
Date: Tue, 22 Nov 2022 04:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669092054
