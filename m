Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4ACD3451CF
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 18:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766168633; cv=none; b=NTyqsRaIx3c90zp8PfYVgLH865OgLGQeCH42g+sK7snXQE3iFcNgzJpeLC5wzJ00A/xhZv4yiI8DKNYV797I70nq7DECr4kvtWLTz14kN+UiR5UUoybMrMCRZeTLpvCg1khrU0ZtfclAWHH3SF0iiMAPzJDTnTdv6tddWhvkSKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766168633; c=relaxed/simple;
	bh=4KeECVXgd/BWLxE/P5mIpgRfB3w+LCttYtvmvyS12mA=;
	h=To:Subject:From:Message-Id:Date; b=AyX31sEm3+jr2EMjglVLGE/QzpsIpqPTsuxaK7ss9JAFBfOlhZDnv31u+aD74R2646KnSheGHhTOdGruI4q67F/Q6unBW3sR+LJqxipZzT+u3/4mMRbeGTgf+nctNGTTcH1n2vLUs9s3neKT3bk6JLYI8basp/M61yOtLlkclpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RKsvZ69S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RKsvZ69S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2476C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 18:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766168633;
	bh=4KeECVXgd/BWLxE/P5mIpgRfB3w+LCttYtvmvyS12mA=;
	h=To:Subject:From:Date:From;
	b=RKsvZ69Sjq6pnlkG8g66kIxc7GeJKXO0+yT/p0th9JdH9xSE9Rk7EyxTLHbOJyibA
	 k/mMM+5jweK+Wr9J+qoXXWoE0E+APiMUCIFKfTX3QvpHU4zPTDybnm6D89KTCpvS5k
	 LZzUcfDuaB4W8MYaozIfYSBHO9bJzZ4Yz1wu9GjQ1cPg7JTzsBDn9qXiCg04wT5gK3
	 ld+QseJ+ZNWrnE8qUtMcm6OBzOYT7PDB6gnj7E47P8JPHsMHukzcCYamLMbQm2XZjg
	 Cec6hLQaZ39SEre043U6+bBipzBExFI8Ibc/b37+TqoW6wRYLykvieeCrsL/ZMrXTV
	 qGAPgMoG8+JlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920CAD7879F
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 18:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176616863358.21777.3590457472739251468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b81e26e52fd2991156924d497e625db9572eaa820ee89aa562b64b261a11aef
Date: Fri, 19 Dec 2025 18:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766168633
