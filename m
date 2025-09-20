Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 101AE2D0C80
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 11:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758368395; cv=none; b=cmlGwU4zzdl0WTpqQbh1S54trP46YqK4C3k6CGiDor++mJx+hou+Eswz2bqBAy4pMwmwZ/SD+HpzW0TpLUKWsGrv6/2zBuGZJplhQQBl/7Rv+v04pe1cZOMoh3SgwlLJwf2EquFKE1A7YboYybrHykHvxtBjb40U0MFj8apmWyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758368395; c=relaxed/simple;
	bh=WYpp+nTxx8rF3nZ4rlB8Osbk1FmSRyTRWYYs+ogWojM=;
	h=To:Subject:From:Message-Id:Date; b=e2NktItTbhFyVPBoihW9EXSrwAGhBfh7oRWa0OqHiSPOX4JF2LAlELmFKdUqPGEBXzuHJ8y1GjlVHv7lPjR/EQr0wq2DeutlmCEODIwmS16WUpth5VIw3Nq5CjzW+pl8EmGTFnQ5BxKqo3oY5wU6MHEeKq9iw+eSAMGaiGBt0bo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JJ9fXPE6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JJ9fXPE6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C9FC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758368394;
	bh=WYpp+nTxx8rF3nZ4rlB8Osbk1FmSRyTRWYYs+ogWojM=;
	h=To:Subject:From:Date:From;
	b=JJ9fXPE6KmmcnNRwccG0FEMRg3aD6lkpmajLyq2pkoe9b2nrjYKAHa7RqawyJtK52
	 Bk+wNdOXe8fhTNP401L51wExND15OK4sVNRt8klprsgn46bgBLX8jMj74duOrNaqvT
	 c4fSwEem5th1apw+3Pkrogp6tca/CDST/pUJyUXo4BpcgPtYMeJohRYrju6fGY34id
	 3kQCMJxKhCYltRTgjWroe9yMbQEo4006lTqFF5pOq7Dtg9Dmex/Q/kXS3WpZ/i1sJE
	 /NlAEtoLfOZTdEiOr6QUyDgCzt9PkgAYb/Q4AixeGEn/+loj8Ae/gIvQuB/N/UIxYj
	 NNu1lUF460PjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9298DCAC5A0
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175836839357.13776.4229967523787170916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22661cb00120c3201cab7cbc1f441386311cce88377af5c4628363bfd01659c8
Date: Sat, 20 Sep 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758368393
