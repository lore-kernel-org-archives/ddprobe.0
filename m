Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 437BFFC08
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746147596; cv=none; b=iCpOkm/RZ9g+BKwRZMozZZhZMMje5JfjAjxqpDhqYx8c8CnuMDiglCe2pERTjInNvoIkIvLQMzZrDFHFF4BHAiIGtCPWRjcMK43JgQgjCeM+tjkKazABSDdVX6JWGcZDctYQbD/UZY5cn02vZYg4a5mWuSWMvgZmBlT35lEOiZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746147596; c=relaxed/simple;
	bh=SNf/tFqZX0Kcgl4fKg9mDjaxQ1LzASq/+Kb0V3EKM7o=;
	h=To:Subject:From:Message-Id:Date; b=akfhWBp1Twbv5eM8zF50mcYzVa9SATx6+YuzzLpaP1l1ocBU0ef9W5wbI/nYx/kgNHzM7xejSchOfVpOTjyZCBgRWGDpWTneX5pjF+pJ+45PmY6l0sTGoaLTnZAIe4pSrxBf/hNLcUF1Mm8XFo3Gyiz5FR5yrB851CKZD1ZjtVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Og35cPdw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Og35cPdw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A03F8C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746147593;
	bh=SNf/tFqZX0Kcgl4fKg9mDjaxQ1LzASq/+Kb0V3EKM7o=;
	h=To:Subject:From:Date:From;
	b=Og35cPdwPHixOtNIltq6DxOxO6tsFVLPt1GkZBYCK5/UVLWrXyuCrlwER1PLPTkML
	 DeHUxvzRJqDWaCmATjkypsxDBKDMo0uLwyJkfF/hTUoiLJG8v99ug6t0AZNXJNdy/4
	 z4FmM18K+G7zGFNpuH1349hDUNZcu47J+z8vmUF9CVE+bDONurUVrT+puIpFNyCE4e
	 ct6Kb0v/4GNktwjcavQkt2Moj9ENKN09/7/no3QpZSIKxdKo5k7psyD0bNLo04Ej3T
	 3O3vadU/x4lnIQFnHNLNVuzaesSBDtLcj1dLLMpSEpAOcNfEOY3KlrLlbZ6YDI0e7L
	 AUvAaJvoL5rrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F828C369DC
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174614759357.28976.3242762831302882518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 020981df8f0a31017de34651ab48614b4bfbd8f3bc13d393631fc389db0f9676
Date: Fri, 02 May 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746147593
