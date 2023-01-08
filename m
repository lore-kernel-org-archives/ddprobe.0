Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBD631859
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 21:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78773C433EF
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 21:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673214687;
	bh=9LFlnUwAf9vHay2GyHyfu+X4i4GTuAc+61xyNjXn/5A=;
	h=To:Subject:From:Date:From;
	b=IXAO0UF+TYdxaa2IxAt+zOT/TuVcqHqFzALDjVzGz7SwbD9Xa/cd/yyXciMOCUJkn
	 wgvSs7IqgoaARGG+XR99Y6FvELFQpUNHC9KBL5QDsjwfOITcoIuICMPvlfVANszLEg
	 Pqo/RncQ3v6Wg1TBqHYokrbhgbAyERfNF8IJ2cr6pY3okFLMYItpB1PvF5zS5jxKp3
	 uC7ZN7DYqpfp8gsnd3M+AVdINidJSfttZ3NFVs93sSOR3AIq8S3DZ4cglsb2W03hb2
	 dI946ngSyJWPRk1RIlsGmJT3LDdcplsf5YAxqoqpAEiGQifDU4lUx3g3VtgzDyJzKu
	 EBLkPkfJJefDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 624CDC54EBC
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 21:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167321468738.20299.13836125134671834552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dd1a2bf34ac52b0c234ce8efe0221fbf67fad1dead769e5b7b9d9d4e2198d73
Date: Sun, 08 Jan 2023 21:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673214687
