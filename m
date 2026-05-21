Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4712872617
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 20:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779395554; cv=none; b=Yo4AbY6wkjcjOrCiaX/v3+2F/O0uUJHGhLKSnAMaq0ZYZYSS8x8qLcev/SbQzDWZDaYk9fBXrCxhgNLKGCu+agz4s4FMdoUZYgKl26uBGqIICoIQYpiIVU80wIocDFqYj0kyjvygI8hxcAxVzRflrDHJqNwJjCHMOD1sKQfBKoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779395554; c=relaxed/simple;
	bh=omoSjjjlObfRnot12jZOcpOdoxtoYCHywsm9SrohtjA=;
	h=To:Subject:From:Message-Id:Date; b=b0tzuFJTfrC0KmH2beZ69Wf/LZdxiNGmvG0tZNPJ7OJ7NhCCCO4vYK1xdyWCbOT2awTVoNsOeta0Vja55Mo4pDte48IkzpBJsLAJ6dz3pOYwiGkxI+sNZk3E1fq9cHETcb1PQ9IuF91inbkIQVMoHl8wldQ2kXOETnhdg/Cg+ww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EajbDLm7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EajbDLm7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6909C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 20:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779395553;
	bh=omoSjjjlObfRnot12jZOcpOdoxtoYCHywsm9SrohtjA=;
	h=To:Subject:From:Date:From;
	b=EajbDLm7mbdx0dvhjSng3fuD4lrgUW2HBLg8VGvhu+S9cQ/GmYVAc7arGUDcOSecg
	 neHOHZURpTXhawXq8WUuTMG2ZF8VVWbXFZf2Lxwd6BQDU+ELoCqNvWs0qiqN/pR7Eb
	 bnGu7AubV6rZN0Jn9ALEoZWN4bR2l/xKwiGvdCX7D9M4QTr5cqSF9l/CYQeuOa2cEX
	 tMx3Xawm2DJo/7i/g689w3qOtD2yKn7YzB1K/uy+wqATJTSjWZTxuSjTj6Dqj2fQVs
	 dxbFFDXx8g96jAz9SyYcK4u16Sap4FSu9P66OrsNjOJMMs/A1yJTJG2bjqjTEha9Dp
	 2ZkoWb/GUa+tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABFF5CD5BAF
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 20:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177939555369.25979.9558929422941063341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce9155b609f18934733a6b6882dd0026627697971afb5528660484d772914e0e
Date: Thu, 21 May 2026 20:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779395553
