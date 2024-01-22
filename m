Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 131773FE47
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 16:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705942097; cv=none; b=Va1ZLYOf8GGlLO2iIRogMP/9y1Qkh86WJHvhbM4n3oMzdhMMBmBA1I6/6yiGLdWdM20WDOTAzhkvg6hOwYTbK4STkhDwP6LchSU1OpajTFhqKTCJSQMcYVgl2E5qNiaWsl7P7kXM0h2CNNb3O/uoM75WSE9ml6CYOL9xScI+LcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705942097; c=relaxed/simple;
	bh=YqGKoIIK6zxSdZlcs7r9e1m/V9L1jhFYeMHjsq2nmM0=;
	h=To:Subject:From:Message-Id:Date; b=YvRtFVGqIQ8cqEA9mZLLbjfIf4CoMazEj1yYSi6Zs7L2KcXbtQwv5QdD4V6oZ+XVCsuiSWsc5zYoWb6E85yCn1Xi9B+wUhcfxMX3nUlPiLcpvZ8qJA66ZDjBKeSvdAIoEyhKBft8dkEYxFsC463bUfWdK54Mxppjk7OCG4a1wEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VlPqxP38; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VlPqxP38"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C55BC433C7
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 16:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705942096;
	bh=YqGKoIIK6zxSdZlcs7r9e1m/V9L1jhFYeMHjsq2nmM0=;
	h=To:Subject:From:Date:From;
	b=VlPqxP38AQ+sVV4an3xDoQOBvFL/NGd9fWBUSe9RVVH50IfGqFgafbNXiQUmmlf/F
	 n7zIHllghsZGAh8RwbDs8DQWrEyMYEQ3i2PB+9JWmEc5nhy54xeM/X/X7dAM5Pou4F
	 if+M9KMF0rrjGM6L9TDCi8HWAQCNkGvTUw9fmTKX56PlVH46Tk/ttFQGDv8icod9um
	 uL7hK6j0aqW/2nGvUBOaHKqE/XrD4XLwGkFJCFUK58yWJTbsNNN/oKasj6/XIfqMtW
	 z359hZOPxHuGQR2CylLsJKp/tyuUH3ZGdHrHCdtIlBAQgduKrmQQKgrp/c++ZVVtzZ
	 AWJJ7AmvuPkgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60739C47DD9
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 16:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170594209637.19631.10291607165129527255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c84232ef1d5d3e6972d446261ca3916d40b735562d7f02299082e46a4860fe35
Date: Mon, 22 Jan 2024 16:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705942096
