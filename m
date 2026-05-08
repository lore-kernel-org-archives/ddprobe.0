Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1149440DFDC
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 16:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778259454; cv=none; b=CqIgLDJew8Qu4LNl9MqWntWGa+ARma6zDAOFFpddariz07xtj/q17FPjBROl3o+bcGjTQg2P9LZl/A1BVCFIvjfkuheUcbvo2Olw4tk7Jr/3KatFn/jnl7120QqcfcvqePkejPHWt+Ta8zBjwW4bXaOvrMZcKZAM5myY9sAhrfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778259454; c=relaxed/simple;
	bh=JHbvt5/4mlOK5SK7lQgJTc77SPuHbMTT2jU8WJ5Ww84=;
	h=To:Subject:From:Message-Id:Date; b=WpnrH8gQL2Ig6xC+r4IDmJAXm5C35a4VeyR7Ai4d1R+/nB3j97k+7HAndgV+3DljSTmgFTiZQilJODxnStz0w4qs7blprQZyII6QDvhEVSZ2EP5DgpmJ5ateF6yOWadSOq2Cnw4Fx0VhrVX2U21l4dffM4xt9qffxLThM09LJD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hbjlSs9e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hbjlSs9e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA49DC2BCF5
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 16:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778259453;
	bh=JHbvt5/4mlOK5SK7lQgJTc77SPuHbMTT2jU8WJ5Ww84=;
	h=To:Subject:From:Date:From;
	b=hbjlSs9eSRnzO9I7lQHFq4GnF73sZL8DHGDzIVWiN1SwqMRSIHT3nd9nmvqredUqg
	 8fQdZsswnOh5+8sIVE0X1bvBoNB5/oRlIQswcgSyA23HF3CJYZ1Sp8HGDmJhGaXhT2
	 NrWLeSRbK8vpT8PYI3/DTiPxU8JxTHgyOlkuebxcztf6MzI3BS9RGc/jIgxlpZGT3g
	 u5SV4yOfs5K8rZacl6piMV4ZK6g4oTBvyT7BRabd37RvXqyWJh1PmgMvoe3B0oYAB8
	 kbEU0uESkjJAEj5xHSN5h94xsfR+TgvOIbBLOzzKxmS228FnNPkvcxkYmiYWqC/nEQ
	 LNJeq/qYkFr0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB365CD342F
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 16:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177825945369.7378.5759238308021987902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 790185681a8fcea91ace7b9cbc331bd7e8563be74cc9735855075117e3db80ac
Date: Fri, 08 May 2026 16:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778259453
