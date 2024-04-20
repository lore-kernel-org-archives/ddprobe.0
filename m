Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C75C4C62A
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 23:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713657023; cv=none; b=WHEYRFXv6fwrRK1FNpsAcDSsY60imLd/bBY3cDfPcgXE6PxpR+/rbRT1GbULhGuM+hARQRTpILScouZQHaY0eYxdIbi7IBOm8RYC8iUq67c9ntyBKswvdS5ZTDJLdpJfVbJF2qiPu368G2z1ebeHO50aKHO1c8m8/ALZTxI/5wA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713657023; c=relaxed/simple;
	bh=L16nx3CSfp5SYG8v4+wEZ28aHabHrcp79VHbW6imwIg=;
	h=To:Subject:From:Message-Id:Date; b=FUn9jwiWr/SMRDPAVUKPSOB605QXGmTUGzUuvvWiioudN9Ixm/tcpEg1j7b68ar9ARmdZmx4t0VJr7ehKAYiZ36nrXaqSizpl1TXCBt4VVp0u3qft56duhNs1PsERxqGhOJddeh8CvQeoaKTi4ELzDnG/RYuAGaeR1XuFW6CsaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gOp2oMFn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gOp2oMFn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4858C072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 23:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713657022;
	bh=L16nx3CSfp5SYG8v4+wEZ28aHabHrcp79VHbW6imwIg=;
	h=To:Subject:From:Date:From;
	b=gOp2oMFnyzlPDXPdsniaWB4gI5aZo4khAUd0JCuJpQ4S8KMG14FIr3KAHyPKregnD
	 2sRRl5vWXuprFFWBEEU3bcyIg6fVWAaAcHlxUovgpVSJBWKGOXIlZRo8jhC7VbDhwW
	 6/Abl/NBQK3JwAZzOZjBQ5B81/0+QkeQxXiChpIjTvFBNd8LT5YUOUv7Q02jjYelrz
	 0ITi6qZtNlo4q2Y8U1TpaqkN+01hJz3hk/MJaP3EP6GYlbIy2TyYlWRzEd1GBm/ORB
	 8KyRikwurKHVxQukSudLfINiXggB7kEE4JDo5uAGrp24ZTrRqQqyiN63bYLFUCpzzg
	 bBJYjbe9spH1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D11BBC4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 23:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171365702281.25074.803796182825682863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9efff1a65950880a329025653d778d963e42d433b95562e1f5d59fa4e6213bd
Date: Sat, 20 Apr 2024 23:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713657022
