Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 807AA1A01B7
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 20:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719260003; cv=none; b=jIT8kP13tuzMk9vBlLI/JyowybKo2qvfKqPHht3dVMFF08HnyHWc0McEpEDP5H+exlqd+/AJaKZuiwhcQ8FPbLALPMoY3zO09dpm2YZVE1YS2lJT2f/37ey0SIuyrFSiXsRYpF9cIY6ovdRw1S1QbJ/khuVoVSuqh19V9rXHyZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719260003; c=relaxed/simple;
	bh=9qcEeULpHH5xIZVwcu8pF+qU+TRg40mJkkQ4VNDuAIQ=;
	h=To:Subject:From:Message-Id:Date; b=aooOK9QevjnczFv0E+CnATByZa/3+C1Nk2YrhALotb+dFjM5CDvWgOsP3ke1e5ViYT5uYchfs3kxIYh0kJGHjt38BvKAl9g8xHvVxCG2bZW/q3HrcICoB3CjSubXVvMGcWlqehaImrxUVYMtdvCFs2BCZzyMGemK9sW2/r5AKc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MjuqRYPY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MjuqRYPY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ECADEC2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 20:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719260003;
	bh=9qcEeULpHH5xIZVwcu8pF+qU+TRg40mJkkQ4VNDuAIQ=;
	h=To:Subject:From:Date:From;
	b=MjuqRYPYbNJWwztLtgNB/2Tie3N32aGtyKj9XGrYf7dcboSH6yaTxSgI1WjUCqOHA
	 jC1wNjg4/SoWpdmj0ULxm6bfPdDBLpNvNdC/5qG1lY1SUNuowoHuzLFOPVGMMgyUlr
	 1WYYFfA50J2AGZrpLECXYuUHRlB03tEpk4YkF9ZKuXt62BQHrhu5I4PVE8xAYFuWjd
	 kOXknn1h5LbzDRLIXW3GapX0vgK1ejZ0gPUzLNGPe7cOExsXpSJomN+QcFCJYNzDb/
	 sx7X2Ai6nCJbpx/+1BFTifMekCScsOko4VZNXV5Us/Eogvvq+ehVs6kVNttnV8fHoA
	 NKOJJc8218PuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D443CC2BD09
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 20:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171926000283.19280.15075605313129834146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d24270d1e67f90b9ce83222b3058f7b4f64601925c950139950edfe398df9e55
Date: Mon, 24 Jun 2024 20:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719260002
