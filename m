Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54E784EB32
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 04:39:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713415163; cv=none; b=WgD0Kk7U+/wIWVuduKbXVAo8D5MmG75mSLrxSeZ3hqmFHsM8yBImlOigJALt6rt0GL9J7ZQBBAEBNApnGO3utnvJ+nV757fc4d//ByUsK74FKQE5yXVJ0xSskhLFTWD7uQ0mPSBw+QlNXfgoZdzEF2m/59uN/06AYPZKVRaMYWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713415163; c=relaxed/simple;
	bh=jnT+SD93eZ1vCE738/5p0b21zDSOZkxxogMtxkVY8c8=;
	h=To:Subject:From:Message-Id:Date; b=cszK32+p9RNOm8YhcHFaS+E7y91IxVH/Vq/I9tf/s2/icXG4fVpDQJJhCd4dy6WO9AByD6/LJ1w5uL0qfSxV+2gpI6nnRysF96s6kINRH1B2eQ6U9YljeQKcWeAlT2bMwq3PVsBUOfpi1Rm3mwlEvL/+UMqecgyd5IbvATk3/Hg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n+Ae0F6b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n+Ae0F6b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBBCEC113CC
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 04:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713415162;
	bh=jnT+SD93eZ1vCE738/5p0b21zDSOZkxxogMtxkVY8c8=;
	h=To:Subject:From:Date:From;
	b=n+Ae0F6bYc60fuRMQJqZutIxEbj7KaXSlST4Le4Cewqbgn6CFHLLIgHJstpIRV+9S
	 T6w2f6XrBzjeuIFOfwGifXQlMN7WtXlMkLCVWIjQAvftaQ7thDHSAbWz2FZiPjxNlm
	 zXefm3LN6PLVS8cV8MO4lP67MCDdPbO/+hpnoD7t7brWW8HqGhC2Nz1ZJQnab+Ic5x
	 GAo+nHwAKQG93SZaEVhFvBCZwh/8n8WWggeKduEiI6dqFrIbuaO37N0hrr0otNmM2l
	 YC8EU5a+/qdGTPO5Qe134P89ANBwvb+urptkCibtN0GdweFOTsv0IVwx4dp8PPZ2Ee
	 wEqExlNgUFrpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB874C4345F
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 04:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171341516276.4047.15632475152256672311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c296cc4c29a254eb829213005b78e246c7c0ef00f3ddbd179f8271007705da18
Date: Thu, 18 Apr 2024 04:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713415162
