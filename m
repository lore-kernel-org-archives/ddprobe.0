Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 240F6393DEA
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755968394; cv=none; b=QNwNZyLjVGS7viqAC1WbgDX1qVI8a41J+TDhNqs+oGdfQQz32DzKefeVM8dqjjQH3ISbZsZOrc8FaOUHEcHI7zF1WrfgSGTehjND2TYnoVxF5BWS8U2SQQGVEpbYbMSKVli5lNTCT1WgvB+yjMxTeZY/cq+TGCDvXh6MnBuO6PY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755968394; c=relaxed/simple;
	bh=+8KvyTKZDV5W2NdFYYiwwMp5LHAHUjj+srq4HF3WIak=;
	h=To:Subject:From:Message-Id:Date; b=ZmHIrxkjy6aNqiCA+dLfJ79ZJURqDx8hemoptgRWg7O6pASlthZblJSowEHf2EEgsUyPEHqgMFYR1AKMHiioJvJpZlxKUEtNeOAakmRhZqIf+zDi1fTqAXpe8Atm1T3C8qPpTjSGhPrtpvnwZGSnE/OYQpSef1JwQ2nJAUKZfcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oAETerVf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oAETerVf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A75C9C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755968393;
	bh=+8KvyTKZDV5W2NdFYYiwwMp5LHAHUjj+srq4HF3WIak=;
	h=To:Subject:From:Date:From;
	b=oAETerVftmotwuKwZWz6rHcl0P/jg0B8ReA/x4x4Q6SEtwlpf76PfC5PJ/k1hrs5B
	 /i9QSZa0x4VHDpLms7Ux90vqjOUspB6SIaNoILL18T2y6PENTgR69ZZjFO4zPj2IWR
	 DVWLP7QzZpfhYureoEIX0TsyM12oQG7o5DINNhItfFDEHYw4JKMnU47kZTr4LqSnVI
	 Lc4JRBfzDeaf78CAun5iwfBgOwH2b70Gaoctjt7I+LEN81fpE10aoeCVI8LNvyfR+L
	 ob0VEgnCnx3ITZHKXofO5ZLsa475Xp84HnQDXktgh3+WAg460PjwtEU14x9ehaQ4uf
	 wmjhSyhrX8aHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AECCA0EED
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175596839357.4596.14411430858296505962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64e4aff3c1368796fbd12eb9befe03dadad5eed60c7dad4c55607cb546eb9ed4
Date: Sat, 23 Aug 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755968393
