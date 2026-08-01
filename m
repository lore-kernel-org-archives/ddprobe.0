Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50E781A683E
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785612634; cv=none; b=D0B+4YVCb5JNscV/p1grs4PLWopnlQNcz5qmRNuNveO9hLJvZURV0fC1B+/nE3SHvMRlFDum7X9giY3QhKSV9mSat7/GdlyATiszhADSwmQyba4cblsD6C1kVnVNQ683mKwjwqjv7r5vCxz0Chu8/WtsJ8AIAYY6JlgvLB1S1eg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785612634; c=relaxed/simple;
	bh=gHUBFWjMfRTYofQ8nWlDHI4StKOxMaNBBDmdJeo+uVk=;
	h=To:Subject:From:Message-Id:Date; b=F0WSuN5WA2X9V09Q5INGg5MXjlHmXH35dHhGsUHURErnuLa6Xm6R4LlE6DC+xpCRpWbpialq037KQ66awZlEmCI6pEUPP8xtCtmn+hvVSoz9OgW82/eAIPnWxjCxph8cCn1zg38oOpMe/UruaD6mV02OFtC48gtG7RLoeUtR/jo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rl6bcE+V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rl6bcE+V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3315C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785612633;
	bh=gHUBFWjMfRTYofQ8nWlDHI4StKOxMaNBBDmdJeo+uVk=;
	h=To:Subject:From:Date:From;
	b=Rl6bcE+Vr36zht8rATErBJNI+UJgOzz/etvmHseTzR1WVfHD3Y42hIc7JmOy2lMwF
	 W+eqxfAcYxUfQgVaRxNKRy9RTupK+3sdYedrilZI3EZK+2ZQ8P8S5aN7Zwh0drGqk6
	 QwPA15WcoK2EqSVnU6e1Ou7ZYtQ1hWv9Ru6HX8Tn+HoWoQ5it03LpfntmVvA1nYWYn
	 lsfk6vcHYmMi7hw+++tt9fSHxjKOVXd+8RHQYTNrkllK4XRWTeWyerYuHB3kDjI4bl
	 z88z43Umk6vz9i7FGiwZjMqJmfqfNdcNkyQnra6VfaNP99hgjsaQP6yMVFy7QJTrtY
	 rR88LgoJ1sGpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE5F0C55173
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178561263369.15109.8223341402775774830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 816ebf72f1a7be43042c29be83443fc698b458e83632ebd336d87479042df99f
Date: Sat, 01 Aug 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785612633
