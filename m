Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3791E29993B
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747090794; cv=none; b=Y7BwTn9MBkiOteY1BtUparSjZE4rS59vMdW8dFa8APcBe5gMVAVo5xO7WkJSs/d6XKIfgkicxzhIn+hP2Rw89tjk7t7VpnIK3qcVmU/JzYbA1Hvertbaa/ieEYseReRcYnUPR8WZeOQnl4dOFKvtfLmTdo9rZTsuSJUqh/4ay6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747090794; c=relaxed/simple;
	bh=8VQdTtyjzuOl/9bx56X4LRoygY+zP2Vhw+LwywpgZes=;
	h=To:Subject:From:Message-Id:Date; b=faEco3pmplYxhILtSZyc3uOcrerkD+vbAsyqDerlkdOE9Hd0kVjuimPPx+QlZCdiG+Uo5ICjDbVxMeVVFwvI4p//wct0nkCxOoKG8goefC794bRZL9vLq5Xlhbl6nWeG3EuzoxbvA1TsQXDrQro5lERxyVByxC8hyzMregUF/IY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QbJv7xCD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QbJv7xCD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D2CC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747090793;
	bh=8VQdTtyjzuOl/9bx56X4LRoygY+zP2Vhw+LwywpgZes=;
	h=To:Subject:From:Date:From;
	b=QbJv7xCD1RaEl0CswpToJJ0+S19PrFCrBF/Gr4fLA7m4xi7HLcnMdVEkcQnPfZlhJ
	 0G3oK17CXpBt0hq3sjsWAuYvurq0MeRVLrPd7aw//5YQ46oxJe/X/9sCuoxwIDP8IW
	 iyfPszXRvIR+OLmbE71LkZKYpjy2y6q+DZBwBPMCMgnGofmj1gd+7WTUci3N2bPDpi
	 OX0Ug1U1ROHFHoAy3wqLQDCQIrAGyu7wJ6kEBK2BLUCFxUfkAv2o+hekb8DBJGksTp
	 9P3bjTujefOEW6/dMXqLUs0nPvDhuqL6vz5xWpKruyEkzTkKMsRQ9jcWMtVQfujMXJ
	 mBNY5w1M6iCQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2FFC3ABCB
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174709079357.24055.3601644179844224743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f02611acbb69a6c168faf5e4127fb276809434bc774a3aea09f916a7478a20c3
Date: Mon, 12 May 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747090793
