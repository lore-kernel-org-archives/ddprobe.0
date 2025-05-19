Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27AEC1FDA9E
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747676394; cv=none; b=dW1D7UAzlR3jN1FK/OpT1/SAf2M8SzIZXTMZQeT5sN5+DAHzn1V26RhWjCOWrWZ+TGnPxLYpFZ3UAaAK2po0bTcRjAhiesJ60fbVhdp4D/+OVQkVUWhO92Ax7n8P2QhOKYT9EuISUBZV0HLAXp306pTS/dTDxfxMIbcuxVwqRfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747676394; c=relaxed/simple;
	bh=axwM4E9RqaFrd99yvgHi5o1bgXbBEbBLTELhYsaXg04=;
	h=To:Subject:From:Message-Id:Date; b=TePOgHOQMFi4v7ogY5yqBZhzxRefOQNiEUeJRso/UqqP2VPjJ1efb2dCyOufIAEqTnEWNp/6W14wfXArd9uhbQTIKRXBhWzNZvYKTMi74RuJO0OH/l6sAwrRdHVTqcqmexucZclm52tXQ0XYvkANBCGg6z2JzEsbM0HzYrZJ3bA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Glul2PGE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Glul2PGE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EBBEC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747676393;
	bh=axwM4E9RqaFrd99yvgHi5o1bgXbBEbBLTELhYsaXg04=;
	h=To:Subject:From:Date:From;
	b=Glul2PGEXQc5/c7V+cf4ZHiX/K21jHY0nZMLE9zkxJwOpsBAkwkWze/D5q55t/6MT
	 AvLe5RpiLZAMSPyWqIyr5Yk4p8fgqddB/atzVJan6uajmArrO52TQP4HuepfqiKokQ
	 RTUMuMtH4ow0wIJrUSJ8WKi1i9GdPwIwFXtnCbccZ+0WsIbrSC8Q+3tIJ7Rn32F7Yi
	 zlzMYfqmnLVFvqwvhdIIXefSCY8d5tpyvmNO95RmmPw0JezpBMtYcKiSWWtxP7yoOa
	 uRMtGHnlBoGAqArFwpuYukYD/2xf8zMVGEnMVc1i5zpthBK/d9HE7Qlui5LzMueBnE
	 xjSYo5UxPlL4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E3FEC3ABDD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174767639357.20462.9132113397331892629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d63132a134cd5713357aca9247d71cdefc4a5fd1d301735b88a21cd796ba78c6
Date: Mon, 19 May 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747676393
