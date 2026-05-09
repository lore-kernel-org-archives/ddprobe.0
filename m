Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46190225413
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 10:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778324254; cv=none; b=LGWhxGun3cWOz8NDNsIMoSmy6QhEvBgMEsRzQ3NuDoSUoiepyvd/fo1FBIIYwCxj8OVzooq/1Sss8bnZ0W/d4leeuTd6A7RhjPHYRCNYZgJ0HqVFd5jiebmkbD1yGMLrUzbNYFIYhV2tBatr19RBqcYnPU4QhmNAeOnbKFRN8HE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778324254; c=relaxed/simple;
	bh=5b8uEKxLjeK7sNTM6QjhKDjse4f2y+wCt1bbnEg0MIk=;
	h=To:Subject:From:Message-Id:Date; b=C39/E0T6cdkhz//9NvRJb2bcp6o8oNubtfLWLhvFLNrXinZBWiADgVOJlDxLmkyiY7DF40gGL9kC+GavDrblvMNils1kxx5V0+Ei7tkNdAykOGPoYlDEDGw6hb0VMGFCxLwzRhAo3lAhZ2omRxsCIHHE9QpaxNXlSblvS60B2nA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q1SfuPGW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q1SfuPGW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBD31C2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 10:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778324254;
	bh=5b8uEKxLjeK7sNTM6QjhKDjse4f2y+wCt1bbnEg0MIk=;
	h=To:Subject:From:Date:From;
	b=q1SfuPGWjid234mBqGY9aFQ8kwoY+Rr3mUNRDPP0bx4yjn7VAXVXYHSeWOTOjPTVC
	 OUfsilx2krUVYD0Lj/eSpqxEeDLSxcNO4a/GqH/BnjSjq4ldKxLxBO47+KjFaf38KM
	 1TEhuLZolkwEquMInM91hQxgYQHsNFr2xGA+pOVFvaxlFZSMtLcyx3jM1DIguRkQTX
	 u4VIVn9kTaguNCwAWQEjbvjgI7JS16KjSEDWoiVn4mwgGoD3eFS2QuVXCIyrqz9X4L
	 GVCjfNSt409KXAF5hoXgqb1v3DX698wKlBmOchGnODFcy6rR4lzSB+gXvO/IyZTdvx
	 Nr7TmKo6LL4iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE73BCD3447
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 10:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177832425383.13135.10907897041893418714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a2b2416aa9c666cbdead18f0ce269e47a0de9a4f8f8efa115dfdbf6e7bab44c
Date: Sat, 09 May 2026 10:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778324253
