Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E2FF3F5BF3
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 11:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783943914; cv=none; b=Wgf1FsikQoexdzeMXmNKRpe3O7QfsRynenxB+oubRDDB2iQARx9Hr+a7U44U3HideY/eXLz9Tax1VcCfXXoG5k12I7Qj5o0gPtG+P0u8917LR9/DAG9ixtcoQ7z/tqf+B91nCsZPqHIpPJf0pPoJysoTgXGcmXFsFRpBYTcvpiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783943914; c=relaxed/simple;
	bh=UrcZxnBhNv5Nxcgxf4byY4BZpTa9tZGJ7eeotb6636s=;
	h=To:Subject:From:Message-Id:Date; b=Zk2Uo6hbbeeldd+gbkPtOgCz05w3/OF1Hw+PSpM57x3Vkcnn8P/4zHugERXeqfgSWHjUZLYhGQVJD2EF5TxlGqV5CUaQgAz3vriMJoLMpvVqPQJ07NASkxZCaHgXVtX+MzqYmZWfjRJQXg6Y+gSQfHk4rIHMFcFeVYx01tyG9YE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oMWTJtVF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oMWTJtVF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDA0CC2BCB9
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 11:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783943913;
	bh=UrcZxnBhNv5Nxcgxf4byY4BZpTa9tZGJ7eeotb6636s=;
	h=To:Subject:From:Date:From;
	b=oMWTJtVFq7vcTa9nuEhAPCN2DwGZKCkym0Ei5u0QKpoziJ0/lYvOlt4+z4fgIGjBs
	 04DY4g/K8m8vOsUbpzGuJNDikqDr4E1utqtI1GmgCRxbj8O046735rrpPrWcEsiPjx
	 +QR6UfCnM+Ze7cTE3ciTq55zIB8/YVeYljFk+cW8Cqe4SBZsyyTtsIaxD226ZRSTCr
	 gon95eJMo5fiClU+dDyAC8hTyrdVLSHuMEpZNOlZYT6s3OKTAH7NDfw6P/GhipIH/G
	 wZdfqhHTQz3WCwR3OA732IauD5VB7ee3cgMETv6YUZhdteWEAU4pfRs5N/GipTB9Hb
	 QRymtayNi0pKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA8CC43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 11:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178394391369.16230.17367707173832910044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efcc7081f0dee119087ace4e062588de499b21bd2dd0b3e52d1d78439ceca50d
Date: Mon, 13 Jul 2026 11:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783943913
