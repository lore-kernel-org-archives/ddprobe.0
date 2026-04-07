Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 352D03B52F1
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 13:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775568934; cv=none; b=sqefxf4oqdlD+4fl/onoVcasEBtV3PzdN/QG6Yq4i4VTTEW/FuXewOPtjJRm/qGhXW4toT8Y3zE/BTkUEfhP2Zq/8S4T1QNW8t7TGaNdTnIRtJLRhbVxxjB7lOurOqrmU5hvn0G6WyVd3w9kXf7H9xfcqvr034LkmHkMl2BZ0lo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775568934; c=relaxed/simple;
	bh=6pT49N//t8GUYWcATcv1YFIXnqgHnsfMZ27pMwCssiw=;
	h=To:Subject:From:Message-Id:Date; b=BpgtyYhmo57KasMPc8FdVrYE64uNGJTLfWig4F9RbJ+rp9ru50C2wmVp0WnBbixA8bVHKZRfA7x+x0XY9vzrz/iV6sGkHA9zRfsld29ZT37bWUAfUc+Qa2mADJ+E2/r1HpD3Gp3nxw/xGvbxPJqMdUER7IbsrSuaaoVqnt4wBmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=miMsiFqP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="miMsiFqP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C13FAC2BCB0
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 13:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775568933;
	bh=6pT49N//t8GUYWcATcv1YFIXnqgHnsfMZ27pMwCssiw=;
	h=To:Subject:From:Date:From;
	b=miMsiFqPPlKX/MnDYkryzPVvF9a+rCQl026vV72l0i4N9p3SCP8Y3HnTJmhD5y0ds
	 hECDiLra0/fklhXz3cg8eCuaNcuL7LuRZQqYJJV1dLFLNH4MtGD39KZ1YJWLMcJTAk
	 DMoaSV7u0BpcRHjgnvbr2VKGulxIMKRs/j/9GfgBN1byiytUhVFx5SI9auLNjPgGKK
	 qCMGFyHRUAGU7oVjIKVvy6yzkIXKPSh3ZGpfrT92Uz8JsjGAnmqgjQbTz2f8ik6yK8
	 OJSNj0kNrrKVI8RKPIDKvgjSNwssQAylIMpKO4isCBoZZfm88JZsOQhHh+MaSRGiEg
	 jZIy7grDEb2Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B23C0FEEF44
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 13:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177556893368.24131.8920292278945633593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d982934e51d4201cc950745ac6926ac6f6cebc6a9507334565e69277ffce3be5
Date: Tue, 07 Apr 2026 13:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775568933
