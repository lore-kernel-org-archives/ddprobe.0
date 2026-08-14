Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08B224A2E21
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 19:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786734635; cv=none; b=BwoNSD921N65JI8sEYJvz26aeVXJkwMKixW4zJlCKIPCQSCLmOFZrWU8VZSGxJn/Ku0VfCUePJl7tgz49tazNe8AiM/4hRBlcmv547YMGHn2fS+oGsjB2xxtjhrj/r54G0thKZvxTP7hqIkt8YEtVpYb1E3j2PhZ8RRJmqlWNUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786734635; c=relaxed/simple;
	bh=4J2Y6YhzpKiXFMRJ8OzE3NdzzODWVL+8ikRzi4GbCiE=;
	h=To:Subject:From:Message-Id:Date; b=gN0i6qAW88JXCrvOq1+Q83Tx+rUrvZ4b18+TCANDev246LvlqoUvC7Rz4C1ALlcI/tir6gT79YWccdI55PLACMlk/1L/jfg9wUxthgglTDiixDjMH1YBe8cQz98CIisHKV2hNO5MMl2LxO7Bwce8hH64keuXjqNBLfEZoJbsQTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B/VhQITu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B/VhQITu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6DF0C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786734633;
	bh=4J2Y6YhzpKiXFMRJ8OzE3NdzzODWVL+8ikRzi4GbCiE=;
	h=To:Subject:From:Date:From;
	b=B/VhQITuYsRjudGJGFZNQV7AegAdjzUbQa31EK7JKZRPZ3f/MsUCrhRl6f+3vlIh8
	 SsS0MrghV7EQ5vZRYtjkjN5Vz1M/CK7uPrbKaFesUpRupk7vdDfFE0ZLsB+A8c+ois
	 00hpiEDmnx5lg96MDOPZulosH7aZX49JAgNRuY5XadbAb+jeEk2r9tcim/NcwwTANL
	 BAu1RcxqUobjRXey88Xrrnq/buwaXBHs5SsgYzY9mrYZIwt6DghDOinIixYpIx94ej
	 5vZpNI6SS6tSoiwj6/Bg1ecyvCgcD9qLOd3BpSbCha8fpKlzKveW7b+KJeOlYFKd5C
	 PxF7vblTCUlgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFD08C5B572
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178673463374.13663.14104617753163637311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c91ba8203f3ff6af92af1929afe0a5ccdb8f9ad0a630d399d5f7f3977bf224d
Date: Fri, 14 Aug 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786734633
