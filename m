Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F2CF1482E8
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 23:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770334434; cv=none; b=hNAYfCgtcCSjtcKJVLIa56xRGc2H/QvOFq3MkTRN24s+lFzOxa1of37Q6xLV5vq4aZeo/D8fqPIp/b+3FEL2lGdY6MUJEYMGzMy/FPX3Uz80TBLGncH25jpEksjpd5b3RpuafE+k5aWVr+hjJb2VAGtaoND1PHMmFSuHDT66vbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770334434; c=relaxed/simple;
	bh=oqPewa2an/SIwBjzxkMs7ATw+hk7xHR1EXYWbrFDZIE=;
	h=To:Subject:From:Message-Id:Date; b=XmgReD9rbSIsNzok3LkEqHFrwI7A5ny/e000iKdCR89g0RSaK+iS0Rlgarf3YpEHI4BjDRp/UHK3G3OBpwezy5kgr/W9xS8QIuJEG01Q5U/KdC9VOFisqgRC7GNpXShWBKCaNgpNYkv4cpIVtT+EZKogm188lxJBZKJKcq0yY4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lr/hN7+2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lr/hN7+2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A023FC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 23:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770334433;
	bh=oqPewa2an/SIwBjzxkMs7ATw+hk7xHR1EXYWbrFDZIE=;
	h=To:Subject:From:Date:From;
	b=Lr/hN7+22Vc2LiXz+5zx0a3IB1CGuNUjQYywb2wBLMTMpLyvGn0EoFjot7f/AKNRM
	 rqbJSFPwVhdXjVrWHZmEHF47t0svAGCXuPsh07ATRbnrVyDByhvL+UBMWIUE+HiLn7
	 pEsDb62opRqKSdZl+/jKf2vIOt/N+X0L5jDDFB+r3aBPGXjCLZZa/rM/gykZX18bkP
	 engfYjWi/AeN/ZvWygjiiwTsqwUaxThPAB3bnU+dK+sbuh0pTcZltZ0Rg1ZF6qDc7t
	 w0tGZXtj37RdqbQa7xmA00FiLaeaaASmL45akkpCBVN1awZiXk871Vz3jN0SnpVUAp
	 QoP5ISq503sXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90639ECD9AA
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 23:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177033443358.30096.7298390748698536269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b805ab3c8519bbc2717d0407883731f4e82d0676342082e7dc17b8ad7344575e
Date: Thu, 05 Feb 2026 23:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770334433
