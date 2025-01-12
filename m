Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BC6125763
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736667354; cv=none; b=cMq8+M0pQmVD9V879O3su9OMkfrsF2MoYRtLdqr5w1ubtv5gfIKLg2NrYeHdSPj2zU3huwOuSdMWElKnnSayljJEPRGwhem/MRzf0oyLjJld+S7rwK/zvkEmnJYOYzSch8N/+aaKz8qiNG1qLXLc63/Ek9mo/qPhh/lpECGfhVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736667354; c=relaxed/simple;
	bh=9kRMyFTyJzZ+T2YgFOTmQiydbXoGhifOXeB1CULTAkM=;
	h=To:Subject:From:Message-Id:Date; b=mjHoBRp56q+djw6vplkB4uAmldAcIIeWD0a3Sga38t/Yyuwm3YTX+ytvS12XHLjCiz8nXwWP1eEwId03+NN+9Tf0J5KMvDXPluCv1phs+y+pd4NhJ0y700PEVP3oZ5sEiVPwPMS56y35PE6QyNQWcbnn/cOKjTZfrbYvQ469mUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AgTvSRfb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AgTvSRfb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0B9AC4CEDF
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736667353;
	bh=9kRMyFTyJzZ+T2YgFOTmQiydbXoGhifOXeB1CULTAkM=;
	h=To:Subject:From:Date:From;
	b=AgTvSRfbWEK8FHnjrt/YnNI22T4/rqe9/5/g0VzowoBYtcEf35XpC2Sn2Cp3b1hcZ
	 M7ApwJqNjGzRcACvTEaqbYSbJLPiA/HERv3LxsJOjVe0uoZnrdTwa5Zbjc0t0IPxWO
	 RePUDBXe61bCz4uzw/9Eg/QJsnP7nlIQIjS2ZN47PzSUvbU8fzxRLZ1FajCsdPgpQa
	 P3DfFVtrnyu3ws0bJuyWFEy5JkbdXHJKbDcqH/HO+7OGrBBVp8xGglTnvhMZuGoGLQ
	 ygwYaMAJpJ3JSSWTN+bT9uRYUuMOjWcplj6GFs+3Tf/7TXbP4Cw4Zl/Z8CBjjZO/Bj
	 vvIXB0i6R4Jyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948B6E77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173666735360.3036.10886396846990856397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4618236c9a99a2f11ee766e19f2b3ebb3e9ac0eba6e2b379f1a06befc3529659
Date: Sun, 12 Jan 2025 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736667353
