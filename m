Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFA5D33E367
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 10:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771409693; cv=none; b=MYI3G/O0w+QACDdBpqAqUKaqDjmfnZSlSzpKr0vQJLJYNnzoFE7sD0HDWWfDcIsvtGg1t1gkmlyu+aLFgqokHAXyme9MNZwRwrLv5tVOVpTCl/hkaFwpHNpVhVLyc/kOhnXZyFh0Akcjzy21VB7C1SO/QP6/EL0lnHb82RJQQWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771409693; c=relaxed/simple;
	bh=S4GvmbjQ3VqBv9BX9wBZingpLx/fjkC8T4J2h5jQdb4=;
	h=To:Subject:From:Message-Id:Date; b=XeGbcduEOkn4iOSHv04pVGxuaiJAcRjUhntRj8TpUTvIrlaGaS3WbfqSSZLg1HW9tx1hdZZ+h89fI0/ipmNuuF8Giu3QgG+2v/y4IGy8DT1pg1vMXPBK8gzJ52soXX+k4B0br+5YCndEY42WMMrjcw5gbIEsYAte1IsjoFzCkGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mZpOrEVs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mZpOrEVs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A36F9C19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 10:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771409693;
	bh=S4GvmbjQ3VqBv9BX9wBZingpLx/fjkC8T4J2h5jQdb4=;
	h=To:Subject:From:Date:From;
	b=mZpOrEVsms5NuWd68Wp/XyQv3XlxnBT/gQ3KxULEIJeGWYDvZ06Pw3DMAVDMrDZWU
	 EtJ8wN4TouvVvge5Yl8Gf1FpYSu5VEn3vv4aCp2wG6izE9jGCj2Ax7HY9Ea3D2bo2G
	 SrmeOacz7Q4cQ8wPeGwNeEyOA15ZAJ+hd1jC7QujQ0WGeGKXltxJHFwFN07l1YDXZq
	 7qJIKW+g6KCLwqeVJRpFztmkRDTvW9i+I1ZSNFebRT9o2BapQWnQi35435wNHuV3/Q
	 bnBOfoUU8yJ7L7PRWxiywklqceU8nfqEB+TSemjIEeuQUxVmOn7S84LT/vz6GR8qgk
	 HplonSjd3ypfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B44E9A03E
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 10:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177140969359.31239.18075007284085337212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56a2d60818ecdf93c7a65624eb6acabe4d90fc5aca0c0184a627cc5769800402
Date: Wed, 18 Feb 2026 10:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771409693
