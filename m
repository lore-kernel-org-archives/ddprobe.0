Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78A931386AA
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 19:41:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713987683; cv=none; b=KQ8fOUE1LdQEfsSV+LCxpUYOozO4pFJJ9SxKF14WwEr5/WK3/VfPcyZtCaiM7UGVlJEKI82MEjZVOxTjs4ZFbVzh3V++JK9pf1FeF6PHZ03O1L3m8Rj4KqQPStX+/OBFweaC/0luxPwdMZY6sFLRe64mSiR9oenuqsScYK/k0cw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713987683; c=relaxed/simple;
	bh=JYy05Gimm5EYUarZ12zpzHsOQMCUMXiCiAdXPNFv7Tw=;
	h=To:Subject:From:Message-Id:Date; b=W3mQQv7F9iikmpc5ofuSWXYv8wTRkKmvZete69e7B7eVOFrS/7wc+JFjT7TBQPIJLOqC1dfpG5WRZYdI/bceqgPGf6GJ5RbLFBW1OWo3jQtUXpKfBuVjLa2N3+FUMTo2iKyU0auOBasPCFTSuGoRgnDEY/E1TDfiNAFDFh9h/OA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AuhFAK0b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AuhFAK0b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 04F3CC113CD
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 19:41:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713987683;
	bh=JYy05Gimm5EYUarZ12zpzHsOQMCUMXiCiAdXPNFv7Tw=;
	h=To:Subject:From:Date:From;
	b=AuhFAK0bn5azHs69Upara5LRa4ws75Rr1ps9EzkauTXA6lSM3K1x4xVTA1uatsURl
	 QdKtMAPPemJlqtzn0c5N3m2SPHDiPtiwNEMG8Q5kBsXnyGZgpXKbi3JI1sIV1xSD+Q
	 X/Eu55nWTMjm2M/YAccqJpuNA+m8uzsyNYsi1rQpoFRY2rEpi3O99NlW8V5KCWsSC0
	 Iqo4SUoufiZjs+8RTrZ1Y8A525WRsjMrCynPzB+2dTNX1yQSDtRtnottxvVfKmqexW
	 kczo4kZssa2Sjup+nX6AoFBKOrIl3wtz5TbZZLgSl4jWq7U+Q9ujRJTsjvk7hvnbrj
	 FUysKK2aVihnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DC4B6C4345F
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 19:41:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171398768282.667.4362200534895938563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9039508c77ad70ee9de1e928e6383bce63541f147719614979690a667268ea69
Date: Wed, 24 Apr 2024 19:41:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713987682
