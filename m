Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 242DA5D720
	for <ddprobe@lists.linux.dev>; Fri, 12 Jan 2024 09:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VKAOOihQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 913C6C433F1
	for <ddprobe@lists.linux.dev>; Fri, 12 Jan 2024 09:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705053496;
	bh=8jz7qUK57bpjbCVU9EAHSrfgjqYl94IIe+ErlDsiXZ8=;
	h=To:Subject:From:Date:From;
	b=VKAOOihQBLHQI6lxSSza3Ow6ZO1UJ8lvghzWxlWuq8telmadHVEBJJg17IfallBwj
	 iI76A/hzZM281XAFiOo5ywvXhFCJ1uKiqVPLODkFnzuRLDtnQAF1BqwCRg+Nzx2NMu
	 wpvyNDG3urzwdrLO6y8L12B3TRrrr9PDHqxPSClRnmGaPmnnBcQ281El2aAQ/EkamA
	 jv2j2H4Dg5D5/+wVmuT5kdLVGFaxQVedn+iB6IfgoNr/aklThKIUttmS0SbmXdZYW3
	 g2LaY8zBVvChlRHqZqvnZsZ4ArzYvKbA9no4GaUwiAZVURLfh/wPDZKVsNCpj3t2ej
	 Hu68seFoVfzGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73AA1C4707C
	for <ddprobe@lists.linux.dev>; Fri, 12 Jan 2024 09:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170505349645.12998.11289496030932480361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89d708de0e0c6559e13f0a7d0c85d02b07be4200d6f287440e706a962f939426
Date: Fri, 12 Jan 2024 09:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705053496
