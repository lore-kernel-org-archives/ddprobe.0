Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B1F72C9A
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 15:59:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF20CC4339B
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 15:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684598345;
	bh=Dhd0pav8QLbjaKtWK0/XARIOq45afe1J2k9ix91iAuk=;
	h=To:Subject:From:Date:From;
	b=r7ZV4zDWY0zHZqSWBvDojE0sgHnFLaUGX8nchFV03AnMQQC7YfX4wlBANNFcPDgaV
	 3YIzpbfPtqUljdII/dPVN8Dlg4u6grA5INnRYMCi5hNtUrZQRP+HiWKulgeptJxlo/
	 VKZrtSt5AnSlabs+Gmb5WkmkDJ0GuExOOHyCsnYtcF35fOpy1B9W8i8OReheqDudSP
	 3USJhJKDSrCa5cBfFVmaVTQZyylLRZLP+h/lddA9U9hXBJx+yLII0Mt+UtZa5U5nb4
	 GRRQGGlQrr4BgFi/pzW/CXpP/6k4R7kM9KYQDS7O2Elks1PrroVWu6u+3UzopOLwfG
	 AOulpm22kY9GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2715C77B7D
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 15:59:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168459834578.14836.16489858263674670155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b5b13074e77017026222068f73bd2d0f47b765673544ea18247b23b7cb7789d
Date: Sat, 20 May 2023 15:59:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684598345
