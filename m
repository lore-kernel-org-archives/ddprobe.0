Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3489378C93
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724701554; cv=none; b=U1lECy+NSg6KjirL8hVC0TaM2dn0+0v/NWrFoeMWGO2UO5o4YtvZd+EbhM4fvlslUleXJAtujBEnWwSsMCk/X9R6DYlQdN6D8nBqmrVabeapy52f8BkzXrSQJLnNsaX2QzRhZh5gdy6zrlMqv0oTFTTv4cUr94yKUK5ON1XbCA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724701554; c=relaxed/simple;
	bh=SfCsGUt8glFRaMv55Yw+aFiYr3CSybLGhQ7YXu9cUy4=;
	h=To:Subject:From:Message-Id:Date; b=Gm/N8KhzKSMhK3CdAmoirHOAFJ9dyvaVrAalVOHMT85iltNOf9Dys3KqbTYz95iKAKZqbPfrTC4X7KYKIb7avP/dCp+7tvJU+Cb+KFCtbKmsjvmSNLWN4D7nLuOkHSCOypL3Xm18+pz7rHJS8bFOIchMfhsYEwu2X9BMSFsRL0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WjgZR4n6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WjgZR4n6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A63FEC8B7AB
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724701553;
	bh=SfCsGUt8glFRaMv55Yw+aFiYr3CSybLGhQ7YXu9cUy4=;
	h=To:Subject:From:Date:From;
	b=WjgZR4n6SZQ+gizurVGpUwbHEr6ki8sUBhm10VLwXTuKnFhA4z0JdRuzufg8no0Gc
	 RjfvCGakuKUn3eh7yxe8Q7YCf/co5XVPmB/U5Gglj5OgD4MlPqpG14nlRxJPu98nV7
	 T12mnZwRFwUscGKvCtqRLVtcSY0FrYSIiCMvPbhp8owmzA+5jawK1gNqMPrEnB3EaN
	 SIsXgbaOr/MGmfz8rsv8axtqc4Fg648hap4Crrf3ENtnQkCyI0V7jYokGVZ4xnUT9K
	 xnmTRM4oNN049SBxVs8hXLAnFFY2mnzJqz7dWoXM0qEjtEzW1oRcPVt0W9mI67mowr
	 alUcgPY1zADdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E21C5321D
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172470155359.6217.17724802007466452418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c52fb825db0a6dbe6d20f1a8bef3bd86011cb4aaae2ce9ee936ad1920d41684
Date: Mon, 26 Aug 2024 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724701553
