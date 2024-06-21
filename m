Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D90813D615
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 15:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718984543; cv=none; b=upEanrIBjmv3RMNLF4vSNW1aVoHy49TQwJghJZd7lkC+l7JR9xsyL3IPTL9i0uf8ACqSzgcHY8BJJgN6DEsDPfF1ITU1Qni6/4WLJ5AbI4+WcN41TXDpbz1CSpueXHkJO852M64OpSE31BA9r8MJXE1qOYH2G1ih5xYPX5BjGe4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718984543; c=relaxed/simple;
	bh=Ts/wq5LF9ekowgQ6HMhMi5rtrar1tRckILx8F/3e3xM=;
	h=To:Subject:From:Message-Id:Date; b=L+BF64sQ4TeyB0Ja3KZv27bRldM1vFq+aZdBqJtuqzh9d//efBCrCSZZgU/vdWsaEJPqeVz8gAwsBTr+PBOwrepR1L9Y+S5WH32KW/Cllv2KQuiM4tiPhBzk0e0qi80Ni2896qzI6RvOn1ry2ee1sh/c2Jl96cST+/cR3mT6lLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R0VdAq0q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R0VdAq0q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3C2EC2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 15:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718984542;
	bh=Ts/wq5LF9ekowgQ6HMhMi5rtrar1tRckILx8F/3e3xM=;
	h=To:Subject:From:Date:From;
	b=R0VdAq0quulUUYI8Ssce6e6zY78k9+ol3Gc0Meog/lKbIA5n0wWZCSTx7TP2tq6Uu
	 YTV5wOms1J10+sD95Xj6KDZx/a54n3bGLEhHgwmNf7mdSxhKGUUlsaycXhFfz9jo9Y
	 x8w5H2yTJcTjxO12uZ0Luj7vYqZSXH2yvOdreNAjs415hHt2CZ/d4vVQM7wJTBEb6p
	 XXAOj+7szQJyqCkNgIfIOicXqYAEVEc0nMUTTEL+c97IsAqckZKBeyKmE74T0VOSfc
	 m92GPqiQdtzQlxqrovIksMF4R81x2keBpMkvqB1pMRnXOtvRF1/Ox/dDKVHgK6OOcf
	 ZB2rtdnpEr1qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6F5DC27C4F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 15:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171898454278.11667.8036656365699725588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2c6344c681ad12285b54d04ac283c419e2195bb32ad190029d25441dba5f647
Date: Fri, 21 Jun 2024 15:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718984542
