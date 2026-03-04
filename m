Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E90A93D75AA
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 19:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772652894; cv=none; b=FLyPwhWMARo9CLwwmona7WUQdvbUfqcW8QzYtOgC1S7EXojArMPisNsMKcT2DH2k2Rq4NMrj9aJvvRvbnle7drVb2AiS/UyahKs/MRx+q2oX4tU+TE/JodRWaqaj9VxB5TmFHzR+ukxAGZlw8Xy9sEvo3aLiZBEPVDsXj/wpm88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772652894; c=relaxed/simple;
	bh=dTe6Q3v8HPAE7Ub5b5mUJ9aP2ebq2gi5WCzRraKVeeY=;
	h=To:Subject:From:Message-Id:Date; b=hWf3RTs8/a5Ow1fuk/0zwTVScQtZZZyYAkP59I7lHImwFiCNdvraebQLW9tU2jl+ywzdd7zdJx6lbQLwbHJw4KxG2RRCdRKp5JH+7hkSC/kP4Rt12PI2i93hoUG+N+OOtT+JBzDGwc9vX4cmGLrHzf/wbMJKdUvbjT7YBGRyiqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NTjyjeUV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NTjyjeUV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 97DEAC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 19:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772652893;
	bh=dTe6Q3v8HPAE7Ub5b5mUJ9aP2ebq2gi5WCzRraKVeeY=;
	h=To:Subject:From:Date:From;
	b=NTjyjeUVwjKXnYtaaFGr41s0Tkk827XFZ9ZrxLh/tIhhOjp+Jk3wMp4iuaU4YN/5R
	 H11Jm0japJJlkA63ph3QF/VIOKGZTaMhjEm60IjPmICaH9dPtYnSgz7R1OPVfB4TqH
	 i34LCG2EioyGiGRuX47My8Ab8VaoOiudXkseyjPtJnZzP5fyySxyMybSLmEw45ez8m
	 PNvKPntw8Tp7baxX7UaLfpaehI89tRAf6UX9eGmnVjapnfQPhcMsOK9ebYbm2PUiQk
	 EGJ4TmVF7vkiY0+i0ZJzXAifirOQeHyjJH0lvw5iQ1yGfDA7rhFbaT32Fi8Sji3XjH
	 lQfeI0QEm/66A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CB1EFCE3D
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 19:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177265289358.5913.7946774465464609678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff8133357824ca33607bb0ddb4c77c87d7ad7b3ff20ac42255e8d85babd8a00c
Date: Wed, 04 Mar 2026 19:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772652893
