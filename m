Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C0D01DF25C
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 23:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774740894; cv=none; b=OA0MgJbU8bZ6OvvYX7QnU6ITHKDgds2EKPZNDCaqK32del8AddM3JjEBRBkh3hDMIt5bvDQf+NJ8xbjV8+5I1bd2jOhpZzg/kSgDW2ydbPrOvnGeFuYkOLV2Y3PDqV1Y1bDnmVNxYEGHgrNzlmHheBggFErXmHFWvPPp3b9jdqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774740894; c=relaxed/simple;
	bh=8Zg66jfqAMhEJughM1VLHX1GU5+6JdZKTEnwQJnP6VY=;
	h=To:Subject:From:Message-Id:Date; b=nj2AUQdU0PomsZEpaageb7ZVS/xrln/f5sRY+CgYw4WbMbmCvIfFpxSqWYyamamAE+QhFLd/pvVdYBlKisMFTodue+PoqfoKCc/nlnBDmBoBzd4RH7OOfRp4Xu4ZRgu5/8IjTSIAPKPMu/8ynKseuyr9IHKfPs3541HgKcCywEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JIDcaOUE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JIDcaOUE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D80C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 23:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774740893;
	bh=8Zg66jfqAMhEJughM1VLHX1GU5+6JdZKTEnwQJnP6VY=;
	h=To:Subject:From:Date:From;
	b=JIDcaOUEtqk7AfigbQc1jE4OL81f4hxv5IhMvdd4K0KRndcaI4RA1W5o2hI/ECn1G
	 3daNajCG1GWhowT0/mXU/aYSk1PIbN18Lnce9IUPWgFVejdWRLwMqcA1lY3S1s7VV/
	 CQp1LLXFaneHZ3Ea0947PrLCssFYgitc8RhzOKdFXg79nsfjS9FrTPBF3SuaOvnXNO
	 1KcPocxgWSJHj1MCq+AphOyTV246rjQXNiJUV7EhJwppkMJ7sXeVgCECoO9t81PeS0
	 EFL6Ji+hGkx5MuHqVUxXKLrS8TRqV4tdVll43RiRbPfFFInri0M0MftZOGbPCn8ynD
	 E5bTmlBPhyXbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96EB510D148A
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 23:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177474089358.29659.15741759586217271769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 591c44db36597ff9cd2b1b8ee45301d7ead64944660a34eaf2f2d80259f16409
Date: Sat, 28 Mar 2026 23:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774740893
