Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6A7D239567
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 14:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763388113; cv=none; b=DMBTLu2htgm6VveE/4VaW8LRAyKIU1btGdwtgTJD1roXEN6YNa/C1NDqm9tUiACCw4TIIaeESYAKtYKthITwj1491kcQ/cFXr37HtSNAJZema4T80LLHRnyb5uI5Sj4GrT4f41lOy4loLz8oZFG/LpR/Rs3azUYnmQLGadihP/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763388113; c=relaxed/simple;
	bh=eUlNymUuSb+wNktc6WAh3c18gRaJJfMNUOur4XI5Blc=;
	h=To:Subject:From:Message-Id:Date; b=B+3vimWWZLzeDOKfWQNqQPPxo6WJdFFtmdMyO3OH+Q8KpswTSRzHnFr1DJyq9gMZ4nRz17qe5RmdTw07vHN7VPbz9d03cg2JkD+MlwkWMGKXkQ94d1QVdaA9m/oSQp6q3mhIM2PwmkRi0DeX/h3xPb6gB95Kuiz1urRERogvmOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CPAz0lbk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CPAz0lbk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9157C19421
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 14:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763388113;
	bh=eUlNymUuSb+wNktc6WAh3c18gRaJJfMNUOur4XI5Blc=;
	h=To:Subject:From:Date:From;
	b=CPAz0lbkxQAiN8PeYOYISGp4ndbbo75Iy3jHv2NfhtfV8veULw+cLjDW+V2sFn7/1
	 o+i2053fIQOed3KqBr1oBBl3iEpMDpyRV9OUAVD7/qZDJYaWjI/gkrOJ/5LvncSCc9
	 yp5f7MHs5OgHofaS8bsMnlxjfJphf96PCDjZZeUeAkWYBmM6qXv+N+wALQN7r67fUX
	 mChrRgzq231qfwnoY0ukZW/3ezw3RHGOodn8jqFHV4Ro6C+k3GRHEzjxvKcWszg3ZP
	 UVpw4nb2QGphMkKdkryfJSV0+xoidkINnKbCiqLMZbmpwjZn88cX2oHFmKpCU+EwAc
	 Moz7SBqCM7hnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9397DCEACEF
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 14:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176338811359.21592.5174188125203106103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9d5dedb634a28539e315e11316418fd22926aecb3b1b5e01e8080e50110f923
Date: Mon, 17 Nov 2025 14:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763388113
