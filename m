Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C4D44B04B1
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786076434; cv=none; b=dDpHSeQvD3k1fjigZNoM1O84cBpkE//sCGdjhMROCmjjuuaB/fexI8gk4vtirOxMoffM1MwS2303PpYpVSn+9M6XseTg7ZIGak7WI6Pv9Xg2ETCiI8JIqkJ0Hd03IrlY3aezOXml2XHLzRlDLbFBe9GhIG3NxItmno4/DEXmm6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786076434; c=relaxed/simple;
	bh=j0PwO+c5fH9iROSm2N3Lmz9qlgD9uUImMSB1+54skEQ=;
	h=To:Subject:From:Message-Id:Date; b=g9rrbqzfXaia+v3cpNfa+iMt+0Em3L3+5tGaC1LgcHm07DrXUm1Nhm5IQMk2z/vQIBcP6CeZY+h6FYjpP/VleBUoKeiLLoRRwnhaa2BSwGudIw76Ai+JF+8ik/dcA2Rx0gzFEGB+c5EZFAqOLkYgek/aLxXKw8Ip8fhRY3GlgTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XSW8vQp0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XSW8vQp0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA29AC19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786076433;
	bh=j0PwO+c5fH9iROSm2N3Lmz9qlgD9uUImMSB1+54skEQ=;
	h=To:Subject:From:Date:From;
	b=XSW8vQp0CAh9O6e6k2NUNmc/2nVAYPFrSzL02rrRQkG1cDXSlZAw0Ikr9jYyDeVeT
	 +yLxOPl5kSqkAk6s1FApuc3/CQKG9EsNCNfhZyMV3F4d5AoNBVxINoWHBPgc23JQdM
	 3qAzPsOrY/hqijHUBcNh7GC8e0ZJpEoawzxaMU8qGIpmj7XhRL9F9C+rgof+WxQ4oj
	 9U/KSTQxNr/cfR8N6mj9unfNSLZ/F7ed78xl+bLmNv2ZskKrtEsyEzZkBx9lYDrYyH
	 5G2ti5XWa959VDZkGEBpWN6SiccPxwt22yd62f0nqSC/uL81Y6YjW05bd64puR1DlP
	 PSB7S1Pej+ncw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B36CFC5AC7A
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178607643372.32093.7648105952653586539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bee977892fdf8fa38710267ccbce336200b65e23a6e48ce3a11517cd629fbe25
Date: Fri, 07 Aug 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786076433
