Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B9277081A
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786250434; cv=none; b=Ni87EVuSJ0NzZNPhG+W9CsbMdgGppzX0PLrKu3XmpkU20ZWE6DTeEocBBBNDWkrFOGcZCjGiiJJ1jmPzfA3klK3YiQMFrK5UCkXNcEgCY9bohOfgflWIMMdg6hFDNeEqxmVSQvGoWjDSqTOAVvMT0k8vnoljzImfS7w59Mj1W4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786250434; c=relaxed/simple;
	bh=Niwj883PABB/TqeNZR5UQD5jp7Mf6BzOuF01hgT7kIo=;
	h=To:Subject:From:Message-Id:Date; b=B+InRBUy3DU9io0zvtrHQ+NshK3iU+k/Pv7Pap8tyY/rj81/hlgd6c/zdJADVlJR2p4q//3xFYX3tIw0UdaWJeekqEcpVdYA+9zNbrxA1E7+qurwwERWtRbYcw6Jv0ssAbUmNenAO24OKL4AEj1zJMKW/waeXogDucgtphXI7iE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Riv41z4b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Riv41z4b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5EEBC2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786250433;
	bh=Niwj883PABB/TqeNZR5UQD5jp7Mf6BzOuF01hgT7kIo=;
	h=To:Subject:From:Date:From;
	b=Riv41z4bePoNtf8yfhQbYmYaP4U2+je3pedx5bP2EaaDPoOc5bDw3sBgc9CuaAqSe
	 7XZP82sTCFIHEbEuxkr8o9w9XWml1KVNfECx34dBpPAI+Wvp5LWegB7f0EwP305ofB
	 JGY2AW+0TWAO3BOTg7RH9ik0E+INAo41K6vZtAJrXq0vWZpExg0O4wQoiYPypRsia+
	 2fyB+7rDto4JooQkqKLXbMWi2bbcS9J6zHJDAMGjyPl4ixzicA6rIH9QtNFsJzmDW/
	 wd39Cyzrhq99A2H6CoLzH0w2aIO7XeQpLAclIPtWuoBSzxKXhmceuqF1yfFBTRZY9r
	 XXFHzuifzCCJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE98C5AC80
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178625043369.9110.6584205114419490658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2687962d17a9bc83eae3dbbfca72f4b848de490441f3e054892a8dc690f604c9
Date: Sun, 09 Aug 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786250433
