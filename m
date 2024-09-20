Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 377C2482CD
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726841754; cv=none; b=TLb9lUoUr/7ErHPN1Rh1Sekzt6TKkQE5rcQvMjMK8rQbzlisRwUHK71A4i9v2djtLSdAN5utz5d4Q3ItT4NuVHnhHwft4ty3AXtm93EceENNDcPz4balLq4lhKcKZqVPz76kduBYlcR0nZsjGK0OFciLRyNd2Sro/8XQMhafmFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726841754; c=relaxed/simple;
	bh=hxLimYt8iM+BSyXCqvkbGiqR0YUpTFddut1jWz8eD4s=;
	h=To:Subject:From:Message-Id:Date; b=oIBiMiIrPkJ0fXQwr8QSlDy3nBo9hm2mlW5vXvqkYj8mkGL+xzlz3JdGxAJJpJIlB0nQ5lU1mEVNfwaOAdex3WxZCNPaFjuWWwyMnkArvSpO/E4qU+xUTxFTkQK6CuSrNLrpfy/KqmxmmMn962nNlxjEDL799fjQZlPLWXQSUtU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u1/hlZNJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u1/hlZNJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5EAEC4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726841753;
	bh=hxLimYt8iM+BSyXCqvkbGiqR0YUpTFddut1jWz8eD4s=;
	h=To:Subject:From:Date:From;
	b=u1/hlZNJxzv8Ul3FMyiN0cO10FPMC9rUvh5nP/z6w0WES2Hv2WsMMZG+9tejDxi0Q
	 ObHegZzKS6EPYPA8I4j01TalILQKTG0psb9xsIX2gtWL64MSiBKZzhFfbbaErcPMXv
	 nGhU/eVG5iEHxqMexM8kA9+J6x2FPvsRpBRZLfOtAPpKWwgZmpivdEY9l+VhmdhIrF
	 kYT6FXpuOOFvTMHyq/dhXadqy3yMCXM+5zYLvRzhQtPvSzlCOLd3Fxi/5BeulEAqM4
	 moYNQ94v5GnJ/xe/Zv1RxyECYMFZcJK3aGZutQFAruI5CsYS/IaleicmSqmznjJYBT
	 BF95hGsPedGiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92431C78853
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172684175359.8094.11690668081825795927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8d8afbb1f10303cd5bc34ee663276f299b42d67cf66ac10c73bedad987ad194
Date: Fri, 20 Sep 2024 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726841753
