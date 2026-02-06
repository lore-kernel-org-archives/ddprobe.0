Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E4D434F278
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 09:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770369834; cv=none; b=IFgvYFK2P2lFTZYJw6Z8PoYMkllk63YAg0UA31WtuEMW/TkZ2gW6WyLOhcV7zJtAN5Kr46xwjP7iA+oE4Yb8bM2XOp8UoSj3czAahUsqctLLemYr6fuyP9kIhmxKIvvyYyKbf72aShltp4BEujQYLIWY9+2m9wt8jnHVpcS0KG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770369834; c=relaxed/simple;
	bh=fPD2i4vFZQHew1Mb/k13RUwNUV7wBI9gT9RidNzCuVo=;
	h=To:Subject:From:Message-Id:Date; b=Np1zg5OfkVUenJd0swRl/vmp8SV2rwY8rucxxwRG2fihhbA5S0avQf+n25E7N8V+bcXiFjQkIfMHENBX4N/3vfFDBNHyLggZ8LmLwahgHX/HTEdVR2ZWo3E6ey0sweBVRARqF1OEyh51bY/Ac7nskg6fMKU8cpzqCu80d5RmKRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YonY++Dl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YonY++Dl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5798C116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 09:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770369833;
	bh=fPD2i4vFZQHew1Mb/k13RUwNUV7wBI9gT9RidNzCuVo=;
	h=To:Subject:From:Date:From;
	b=YonY++DleooPE5SmbP+H6WaJINWZhLC+mEwxNOHPR8MUSFqPlZOu15Hj471MOTxVK
	 jroDl0l6Tn4wkeLMR8zzKykZSiJULbzq5alfH7WFsejj12tgl2LQsSTjcK7rGY5/K4
	 BbXvW14e2Xwke94h6B1dbLiX/Jq5hOtpiBEYMqru+1Ht/Mx7Mb4aA3P2yoiXmtS9vc
	 alTCwdiKc6IZDmfHvMt4J68htTHTTCWrNKbBgILTQXsxHwvb9pVJ6deTyiE9//3Q+s
	 hgn9bHB83rzjHYi0k5V7m93ZEe6vNHGvXbKxvWaYLVZk4SyyMh5c5LlvbsoWAT1KdY
	 LXN7j+kRgVQHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E522EB28F8
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 09:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177036983360.4883.17466956986568780339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 948ca0d6f6c17769a599614d5766b81888ff14091ce0df7d580eabeee4d800be
Date: Fri, 06 Feb 2026 09:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770369833
