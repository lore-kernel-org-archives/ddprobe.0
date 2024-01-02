Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23CA315E97
	for <ddprobe@lists.linux.dev>; Tue,  2 Jan 2024 19:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YOZc/M6Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E5C5C433C8
	for <ddprobe@lists.linux.dev>; Tue,  2 Jan 2024 19:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704224896;
	bh=qxKbNZ/tfSjmhPH6fXH8IkLxBS+FoYyH/+zRsiyBZnY=;
	h=To:Subject:From:Date:From;
	b=YOZc/M6ZTd9jRQuD2Njm9SiApIOUjROHdY38vZyKYxKaMprHayeRO3R2Jix4lpn6A
	 +FTLgxQgeLMlNo1wrCLkxf4jPcqMVv6C/3n1kX0TgUrt/SZFoR1bOD+qNTFsGYy7e2
	 2rNBMOLoOIY6JWsWUC+R3p6Q9UhpkvzG3pzLNQPpCSvOQwtT2KVJGmuU/+epHDjaDh
	 TPp78/dplyAy+lNem6J3feaecup78z9N9Z7n9zzfJyw3t8LRa/Ddo89d8JSHmniGmp
	 wVU/VmphwEgf3foj/UKLd5D21uHtrP+6oh5pAbjX6E+1ZNkojdztktwoTuOfqobtn8
	 TKJoTc/zadFKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6EA82C46CD2
	for <ddprobe@lists.linux.dev>; Tue,  2 Jan 2024 19:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170422489644.31321.3112039483557904326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52bb0e88769a82bbfc56ba76e084da896b613df5935c55d77b64942cc7bd8e3d
Date: Tue, 02 Jan 2024 19:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704224896
