Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59B3C39FCBF
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 09:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781690194; cv=none; b=UcuCKtKUkqqW9EZ1YWjT+Xf7ubu1fscOvIxPeZDQK23o7bD7+zcHL0m8/gMaX0+ijvmOKNV2kC76i4e43SEyZz8Q6VFfShpgullAXgadBcTQzY0GyvUOGX8kBJ+XYIgTbJBWojPsQEIwZNaOSH+oJ79C7Q3m2GlVdj5yejN+Vh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781690194; c=relaxed/simple;
	bh=2g2NHztyTB3MbZcFVG3DpAHcsvX+6HtcPkBBT+K4QuY=;
	h=To:Subject:From:Message-Id:Date; b=HfrkWct3pd2TnHM070wXQ6GgYkddNOTur66M/KzRchHoGbdwT3SleRoEIYgzKWQCDL8ja5xG9Y+Ji0h/viBJBNoflrEDBfs6GIyYMkt5eszp9eZe8TjqGeqHXCt9+KMOrThQ6C8B2bN20wEVpKV+zKURTV5vwk9o8PVgiCCa2DE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gwx/tqZ0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gwx/tqZ0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1698C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 09:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781690193;
	bh=2g2NHztyTB3MbZcFVG3DpAHcsvX+6HtcPkBBT+K4QuY=;
	h=To:Subject:From:Date:From;
	b=Gwx/tqZ09VRILebtifPWbGsU5P3MVCSIfjzfHvtkXLCzbuvdk2fNSdnSXOeSED6UE
	 xXUyD8HrKT4LJL7N2IKA4i4R4jHdKsh5DZXgcypT+kpaSCrKT+3bIq5CRK8T+qyuRU
	 lSgAr4wHdMfqU4AxBOTZSD0DDJNLqHYTuABIV+/hePc+BZJ0KvAmVudd1qnTEvTjlB
	 HuQspTYO6taYiPiulktOWXJLquqqRVa7BSlRRArCchHkPUt4gm/m8VzE+9hiR7OLV7
	 CSGy8hmuzLOuLn5xgiW2mNjEONK1YRyaxfy/2+FrpeeUTReNdGhxeC2SsuiRL5ObSX
	 HtE8guAKlAzAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B59A0CD98E4
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 09:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178169019373.28751.17837592529696985119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bde6346fe96c8e7bb368f5b5967cc8f98c30131434afaca6d4cb872bedba55bd
Date: Wed, 17 Jun 2026 09:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781690193
