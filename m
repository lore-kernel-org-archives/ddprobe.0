Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C2D926ED59
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762496994; cv=none; b=g/fepOVii4gML/39S543Vz/++yfk4YwEVo3uNc0z05MFWbyd/5odwEcAIcpUnZhg7uS5KQCp8sQunBBVTg+5Zjc+4HaWCNDMiF5uUmQxRhuCb6Z9Nf+lzgn2GhZ/MfLbZKu6j8+mP8knJp/8f+T+Neus0k3VbKWbBDKzxqb7Wzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762496994; c=relaxed/simple;
	bh=JVTvMSMOXwLGROp3ekP2Lmn0py0bUC9RwDl+QdCACY4=;
	h=To:Subject:From:Message-Id:Date; b=a1GXuT+BlLcJdQafqFogHuI18M25ZV5dPs6WVLQCwpz9akltre5T6xDnDNRMHPGo9qMJcUTazjogGL+EX0MlJHImEdZr7CJMRth4guulZAGUVLrXB8VyQcjlLEzeOdPARZn/XnbQkqxbSrrtjV1A1zETKuW0NyWWdFvnPTb11PA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A1IlP4+O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A1IlP4+O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CAAC19422
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762496993;
	bh=JVTvMSMOXwLGROp3ekP2Lmn0py0bUC9RwDl+QdCACY4=;
	h=To:Subject:From:Date:From;
	b=A1IlP4+O9ac+cp58SMgzV2sHIKns/bO93URse0e08SQ9HfYzWOyPIOQJdEfVySbnS
	 NUO/kLmEQ+1fovgtcybhFlevyKWKYgoy5sYYV47DrAuW1fKJzFZnP6rKFJxNRPltCT
	 i7nCH90/mOYMjtPu7P672p4YShh/DDf5Yneobk1fKSlKs1uJHJlcIfvo4L0NMbD0UQ
	 u3teDXMcpSLHTLBrAqlx7az9yQn+RK8LraRlyUsI/PpD/4+2dag6HivWZwJwPe6URu
	 kb5tV6xIBHNpSZWBe1xOvWRAnWHbqkk0czVi6cJ+OGrYTbsHtf7JN/SZ3y54EwUOb4
	 LYgyHaGUT+AYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913D0CCF9E3
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176249699358.24234.17856160955315160879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5723cbe26d8115603c7ee422e7d24f68403830b7a9abdba5341cb072205ad91e
Date: Fri, 07 Nov 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762496993
