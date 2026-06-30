Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C52F38AC61
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 05:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782796714; cv=none; b=nSWin16Y8J2G9jKhz+8v+CgSJnj49a+kyb0jYTxZ8bzL0cOKk7QQPlJaOjGXY5/kCwEBGS9A05HJkTy/6CQpyT2nA+icUKDdVzZtzlnwW5HjPvmsQbmxkNRu52mEzkb/XnfE5rfxdKukhERLGLHSW6MJ6rmpCdL9SN/oTNU5ObE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782796714; c=relaxed/simple;
	bh=opyKUhQwjc/9CI7s+b64OPQ1d1iMurGpP843lM4LkN4=;
	h=To:Subject:From:Message-Id:Date; b=KDZ2MyXera7D1vccchWOnDSyh6IgqZ/H1sTF8KAmdnTGBPyRWGJKYXveJYsXVy/8VQfaVsv1iJ9DsDTLJSsENgpCNOMbkQDueAOMJwIAxsgbJ15ezq2OGFx9wyjUnLNHJB91b6HCI98oHxVD6mr36NpUs+ESEmZetokdG6bA8Sg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VkVY4Abi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VkVY4Abi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6EDFC2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 05:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782796713;
	bh=opyKUhQwjc/9CI7s+b64OPQ1d1iMurGpP843lM4LkN4=;
	h=To:Subject:From:Date:From;
	b=VkVY4AbiANKDrokYBkCaI1u3T8ml3M5zRafuQGXdBOv6mk/udC3k4Y91mSJstoEP6
	 R0XJg3cAVNMAR5yH8nTn6UFUF5CvVS4p2p4bpbC8cj8p3Benl7IvbFFRGcLhANTlkx
	 lkAALqbH8fWybLJHySbt9kNo0H9bvXAAiAhYOlrvGO5D1IoD+0g6FsJIa4tWu4vb5K
	 LuCCTyPHCf6qeSE4LFEKf0n7h+06TmVavuHVENUsLSkTAtMfQ8zBboMyi5jXNbFRM1
	 5HYekm5UZSFPnJSHlqcgX/EIIwMLHwbkmmy2sE46vyvH+f5qG+OmxH2fPYuEv0cLLe
	 SV2lTZ24Z1QxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE9B3C43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 05:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178279671368.8360.14449309892218149770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 545f5a7aa358ae2c854508d1c6260bf729d5a7711a460b88644340747532908a
Date: Tue, 30 Jun 2026 05:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782796713
