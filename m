Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D850234B697
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 12:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776170853; cv=none; b=fJzlzsCTk4Xo2q5ytvx36sO4jz2LZjyDZKyj4RXkb718wV3iii2EQ75wYdXQc/UYAV6nmDaCrogrARZTReAt9EJsOzv+fGAqsoDry6taOZUbFAGbiH1minFm3jEba2LkW0CQPgrNsqb0PLgXNHWqZjpICpsv9vSgywOErSkC+E0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776170853; c=relaxed/simple;
	bh=pSFvlTBcfzB4mPuF/RcA6lxLzIHCnpL4xJfaXhOxI7k=;
	h=To:Subject:From:Message-Id:Date; b=j2UGvnVlrvvnLgM6HX1tJB8B659VgB/mjCN6AqwF+suyI8kA79GNXkn9Fu4TO7qk03aQv/n1mJeVFFMHaPbyoUKtCe5vNqJWiLAzMvbVBrzYt8Hfep1NS4XBiycMStIcwY5RXK+ICYKkYgFPlVvHNkD2nHD7pTwETGtPyDnydqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AMs4z3q4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AMs4z3q4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9EEBC19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 12:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776170853;
	bh=pSFvlTBcfzB4mPuF/RcA6lxLzIHCnpL4xJfaXhOxI7k=;
	h=To:Subject:From:Date:From;
	b=AMs4z3q4UCg6aBLcfquxbaY5c6Z8N8ad4Rk5rHpOXzt9E+5F4T1p8gjZmJXnkXABf
	 SY9ZSjb5ByHcyZFvwTIohVR0P6fGps3DZyGt+rvHjGkDSlKwdntFIotJ34Ryt5/6Pv
	 T+OM0WEF8c1gDAt8m7RL0fcKHNa884N/MthYTVCsNP3CYKik3Bn6zvMqu9PUQqnTph
	 rYEsc9+Hql3Fp+s1fAzE9MqN0VilyvTx2FXfdkg+na8DSRtE+pqYN/WDFb1QmDQ+6P
	 WzuV03rHOr58EYYXfjzreeB2oDmSnOeVvVuo9mv0gvuMEMs3x6HfXP84M1+hOq4Sh2
	 Dv8YhyJTdY1lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA593F9D0C9
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 12:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177617085368.6726.2793266862188396316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd55c3261d75aac967fec58706dda0d238aa996fdd763c38f9feaa1121e5579a
Date: Tue, 14 Apr 2026 12:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776170853
