Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E86C63A8
	for <ddprobe@lists.linux.dev>; Wed,  1 Nov 2023 07:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="idQz0Hni"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 95BD9C433C8
	for <ddprobe@lists.linux.dev>; Wed,  1 Nov 2023 07:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698824896;
	bh=dzLIjcf9Q/DisWGP+OX/qYKrgCrsJnT8+M6oE3wpYnI=;
	h=To:Subject:From:Date:From;
	b=idQz0HnipT+n0pNBj9UrP4HOkMUbTZVhWGgUePAKJyaDzhnAMENFeoZl2gMfY95Tn
	 z3TNxhKpRnnedy409swzPoE7LEFlNTPa0eyEyakNpevrD8JyumkKyA3yvPjK5HwK8E
	 Kd9lWKNsuOo9WZdAkFKQLc8AmIQcQ/6wOihR0KxNHbcpUv2pPpbIrGUALzc8WVsuey
	 1ppf/Zs0lBFWwFSW/m5tTHXMQw7irOeOv1mjb1Tn5f7P6j9ER5sppyGHFMMK3vatDb
	 kIK1YHv1RcOXvU+HHsrxQgKfrCSTsnYtIMVqc50RpOSFmjof8UsUNFYWj4tDnxfhFP
	 ALUoKGSu41Usg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72ADAC4332F
	for <ddprobe@lists.linux.dev>; Wed,  1 Nov 2023 07:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169882489645.11227.12835988341085012497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee6b329814d58fe4bab21ef4eb54698526a303dfac545cf8cdafc2c3f1f258a6
Date: Wed, 01 Nov 2023 07:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698824896
