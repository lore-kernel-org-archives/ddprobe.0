Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B4D23368A3
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 12:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772625894; cv=none; b=UrrxGid3r+FUMp4t5qg1vD2Qxo80Z/vw1xqGqTMnNMwoQHEgcWH+6P5KP16+TfZNWF1Fea7I1t4fMFgkv345Il5oLcTP8ofkdfAcVz/1Pk5oI9n2h/+QN8i1PyXwXUdkifelk59Q6/XXNN5HV/nKxUTf2nGrKeJ2jxt/7j7DE1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772625894; c=relaxed/simple;
	bh=vyx3Bdz4qsyWCLx+Ec6VmBQZYHjGOBuFreWGt2J2yfg=;
	h=To:Subject:From:Message-Id:Date; b=PMDUOclpn4k9l8DmE4oGxBg0JLcp72fZL7a9SBPz4fcaENfhmxZIxD8GIYlkirZgUsHCPWNF/FQhDZ2Bq6M/Pn+4xV3TtLo1MvqKHGucODKKQ4Rmq67U2Iefbpc0qmd3xNzwvzHdCwomv2moUD2PVX/Ar/RJPBJvZeuQZ02dG3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YSDSNhyD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YSDSNhyD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2C5EC2BC87
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 12:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772625893;
	bh=vyx3Bdz4qsyWCLx+Ec6VmBQZYHjGOBuFreWGt2J2yfg=;
	h=To:Subject:From:Date:From;
	b=YSDSNhyDrv15eu8lK6Q4xlU16hnLTa/X3kimSk3GTfETyWQFRtqXnJ8Fpnh1ubc9H
	 7XDpIHGF4/rU6TY6l2pZsrH46EC1CLAj4HPmUQH3jjdD3NWm505fB/hMchTG6ax8mb
	 nKDKitkHMbhsQ53mNPKQ/alYFB/vjXGFbJAGKVYa8TXvijuMNa3kU8CYBD9AjgJJOQ
	 lDY2VMlH5sebtQa9bt6P+N20N75I2QSYeEc39slclaCAkaJ8eJY+TyDR3PL53kh9kn
	 rjCWT/vOFZ5DNJtllk4pBQggbyTfuMYkNtJd6NSD+nXSGRBicKnFiCnZQLTJ9z8mZ9
	 SBtVoS5CFHt9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1264EB7EDA
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 12:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177262589364.20671.15785215198934147527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a08a7737e80b7eeded1ff524d4d4518d0578a7e36a5891e4293f70aa4803dbc8
Date: Wed, 04 Mar 2026 12:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772625893
