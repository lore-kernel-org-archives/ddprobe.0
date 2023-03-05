Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3419D17E0
	for <ddprobe@lists.linux.dev>; Sun,  5 Mar 2023 07:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2284C433EF
	for <ddprobe@lists.linux.dev>; Sun,  5 Mar 2023 07:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678002425;
	bh=U4itIRmD/e9HqcZ0TPWejaqXudTaPwrtxmhKy3R9RY0=;
	h=To:Subject:From:Date:From;
	b=K737BLr+TpqfX4f06UNA9yebneqEUu9E07JrV7bXll0F3c653s1fRWc1a2rjK4w6B
	 baxpeGozl1M/3V+iJErF8pr98fAhtIZBZqRC9060+htOzAkaRJ6hK642tQ7bYaByFQ
	 Frq1AAJK5APqhO6kEJO7Gt0p6xroIuIIYXdz8elUOY1pqtEAT9PRe0uG80+IZPRSaD
	 mMgdI2TzGzgJ+58QkGjZjdTXurOJmeE4QoVQEoXHcwj4m3EbOK13ZgBye1PF9VG6HJ
	 BfxLioPuyxVD6sHwzxBDjhPI2DV/4kMaQRM450qdOzLccVCWa6ydsjX7ll7L3C74HD
	 VWU0HjfnNnmWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6D6FC61DA4
	for <ddprobe@lists.linux.dev>; Sun,  5 Mar 2023 07:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167800242574.25044.18139496668023698951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 333e5991aa366dfe7f407b81ec0e9e603bb133d3d26e043a07f9f9d78d575de7
Date: Sun, 05 Mar 2023 07:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678002425
