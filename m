Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11BC41E505
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 18:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777399654; cv=none; b=hgvSQtAWgs0GH4pNvlsCBJ2XzEDGy29+comskXmr/NW6vMG8erMQbUjE0y3aVcWrU0OKImp0ji0uC51mKTlEyeLcTpg+C3LLVHuput6NjL1/7Fziq6jLjxbgODGA4QrGDhXjga/gAEpJnJffOZuHEd/Xi+pQu2KV/ZjkjtfE8A0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777399654; c=relaxed/simple;
	bh=q2bB2IzhxkNQgDip4ecKkjtOtbU7GloHl+ZjBP3wAw0=;
	h=To:Subject:From:Message-Id:Date; b=CW6Pig+jF/FNj/+ILkYwST2+pGBTq3Y0imN8AfuA/xRoKpSM++uxwGJ1IQ4GShjoh+cPGwGplFjgqba7gpGQekr+Ui1dpmkSpFNcN8V02pnLbvHR/rLDfhjQ5M3YxALtJTVhg2IrerGtwI2TAAm1dUpi79y+9FO1yKz6DydHhHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p4w9VFhY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p4w9VFhY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDCD6C2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 18:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777399653;
	bh=q2bB2IzhxkNQgDip4ecKkjtOtbU7GloHl+ZjBP3wAw0=;
	h=To:Subject:From:Date:From;
	b=p4w9VFhYM4iKP2mAVnMpDc7Wpg/wE3IuNbDrMP5AqmBPdyAKGyhT/6qBsm/H1+3U4
	 NJvymo/s8LowknnPzeBca03/fdZponNvMsl0lOOvc2OiymXjGCL/wut1z4aNCpKNvj
	 +exWSOQvhF/kGki8qhFoQh2Y0r+pYtQ8o0o/mqc65e1whYz6BCOL/6Oa7kArkeWxTz
	 N7UAVKMrUbimt0QpycXgHSyHPLlIZ4XTdSLihe/3oV34drekHV1MzE7UJwbEu1Si6T
	 Nakl9FR+4zsKD6qI2ZA+FlLCCWq+ABFVVlzG2V3CQaeim49xSbEZSL4xvXRYndK3Xe
	 fJYVlL3G4/7xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA51FF885A
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 18:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177739965370.29907.14811187704795121436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83b10f8863ba1978e781bf25ef4e9db6a1e0326f4b2b992731d72fac5e1d77d3
Date: Tue, 28 Apr 2026 18:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777399653
