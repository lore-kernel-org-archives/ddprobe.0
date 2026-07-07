Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4862948034C
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 21:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783461514; cv=none; b=u6CrxyBMpnuyHy1rlaqz/Vf8iSwdfsX4O0SqX7V8VarzFyOwcAPgrXoPYgdZlHnfyOGa2QGHyCeHMpcpehGNOKONjgELvoX7ZdmuzRSVhpFUjyiJS5hWPalNMW7T9d54V7FG3itCuZrVpTuFmCjB5JyF80VG8i8cbQPw47N75H8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783461514; c=relaxed/simple;
	bh=T+bQRPl+6/6ennxI/F9tLPXiJZwWWusebBSbdMotYHU=;
	h=To:Subject:From:Message-Id:Date; b=XAc9aNKL3kCrEYqqX+lNQyMBIsKZVxrzZjzen6krNyoiGs+O9iLyXmBhmoB83OPlbTmreFxiPPZqhzCGpNSSEIbHI8eXixwR5J2r7He7Pcp2wgsZNm856pJ7PrNFeU3Ga7n/wBIITdwTgB78uYhuGFe+7ENEnUihh1hRTflGEj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dKUFw0/F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dKUFw0/F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1721C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 21:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783461513;
	bh=T+bQRPl+6/6ennxI/F9tLPXiJZwWWusebBSbdMotYHU=;
	h=To:Subject:From:Date:From;
	b=dKUFw0/FpfDWm6OsqHQLri2wt+O8UzBAtcEXY3jdu7SxnfYYzIKcV7a+2SoGWKZ+S
	 e8rHM/749J7A6P7HiJg+BCCjBqS3tZRwQ+ub6o5O324nM92LXKypyNLRXtkku+nAem
	 rZBuqCoOjs449qWKTxeAlxkwNKxfT7/0Mjd46bA4pYiA7znErX0ghUB3jkPobA/2Rd
	 nIqzjEUDqXmVFdzMKj++fqxoxRhEroIGkUc6lFkPf27yAz+1BerMMYbXWrj+aBYJHY
	 vp38PjTFaoYdNJLtE6QnfexQd1g0DwexOUjqIgCmKyDQld6tw8RJGitemSKerPPMJd
	 tsJ/8ERnTx+Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE3FC43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 21:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178346151368.17893.14702610420680101078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5b7154434b5a2de6af4f917537e1ec75b6aa92ce0c6cea48418d1ca5e7e54b8
Date: Tue, 07 Jul 2026 21:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783461513
