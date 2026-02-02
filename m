Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D91337AA83
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 17:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770054834; cv=none; b=EKxXMHMb5TLchGT6WxRZQh4v1u+yC6E1kXoROPkbCPUBxGigPxpNzZ+mJdTRu2TinyUJPMPg0++ViwdBhUkGgTR5kl2UicBO5ydecuLa49GSSAowD8AWQYeky7D9Y5Q9BaedULutiqWkxeAbdABOczCmARRjbU+R2J5HVG8uFlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770054834; c=relaxed/simple;
	bh=t1qOcCM1/dEZByiDjlbxbMHm6IZ8ohC2GrzeOTJC1ZA=;
	h=To:Subject:From:Message-Id:Date; b=jILzyHJxTr7d3I844MGUl8Uq7e02vcmpwBzh8L6VzbStXFDkZYob2cjkIhSNjrGtpKXLKRX5JqCUfaL2eRgcCKGGBnu7nifbEz6auqNYByBfwYZp6Z+/fsLKpwTFr7a9DaHmAgAJh8axQilWXgtjERo9v/Ky5ORWrup4XXbkSHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J3hQMWny; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J3hQMWny"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC2DC116C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 17:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770054833;
	bh=t1qOcCM1/dEZByiDjlbxbMHm6IZ8ohC2GrzeOTJC1ZA=;
	h=To:Subject:From:Date:From;
	b=J3hQMWnyXxgWOxUlhpCNrpUEQotDsR65kYmRKsSXgc29aGVk1wG+6gjce6QzWSdjX
	 ZK2E93OvLsVBk29TKV8CEI4owP7m9GnT1E2xdn1vbF8R+csGOGfuNcg/OykVXeKWc0
	 9bYZREkn1KNsojuWd+UDZXskLDxgvJHxikczu9zXYmyDmE3/gkHGZYHLJcI2WSEdkh
	 mSANcq9r82vqK6t0rb63rMVzh44M9YbMFElzfRkqhB55fpS0WYlf8AFNBMHAtByF5u
	 xvGNvGqztzxwsgSFa5LdS5enlRAkBmd5K29L7ve5BwBPUJ48P6gDYmQ2ycuagr1zg7
	 qMsqjr13b0Lrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F1BE7DF0F
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 17:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177005483360.21540.4460062051716962563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c81ff3c4e9e097860cb053ec897b2cf21936c905baae09c838ea061390de5c01
Date: Mon, 02 Feb 2026 17:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770054833
