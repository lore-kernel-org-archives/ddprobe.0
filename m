Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50C2D2BDC2A
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786936834; cv=none; b=oWWg5juFFJn8VwPUi0ngv//Q6UicyTnXHu1KBHYJlUS6ut+9zgvB5jg3F5kvX0xgNETXZgafLqH/gh52HpN63IWF9ACVU9r3Up7O0zr2MHSCzo50gm9dVIsPekN4Arz7IlpY/9HqXDtKU6mmVLDJ0eeTwlKy0CBmTapFoqOozFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786936834; c=relaxed/simple;
	bh=9qLk0z2/EbrJRIDuVkKYFfZvtrz9IB46hc6dpMKC0aI=;
	h=To:Subject:From:Message-Id:Date; b=X5U7/tFA9ILKyRtJGBfUfBx728U8dryfJx4ySP5/FT9vZ9JYmTQPVnmpMu6TeCLJrKekK9ZvqXR7prCe4VqrUOmcXRARLuhXLbtPBUFTK9cErqa3pv2uAJ0ssc6uYFqWyBNv8Fm2JSN4vjDpKIWSxZz3rCwhH+GyqY1iJzAqldg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aIGmSrc4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aIGmSrc4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFC7AC2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786936833;
	bh=9qLk0z2/EbrJRIDuVkKYFfZvtrz9IB46hc6dpMKC0aI=;
	h=To:Subject:From:Date:From;
	b=aIGmSrc4xFDTiuHn5i7IiRr5bYll4vwURgBAUsLjOWQ+KDV6j2Vyc4mNnLPuhYAxf
	 rVsk+dsI5YP/xdhjbysysHvE/8UTY8+VUbyId8ccHXelUJ4J74ee1f413pWldFrpGY
	 zRZ4CKSWMcc21IqtMPiHGUj7BvtrwDY/JhcVNGVUI3Naq+tBgjzGycDLSDgZcn/PL2
	 TW2g8r9g5flLVU5awt/MXrD2VFyMwyNuJ00wSz78q1sHZTxOpYV/nWhdcv+pM2jNmL
	 T1tytEMxbsTRLrpg9j1rFDI/u+HzITNBu/jf6B6EsmsUyUBxZTKjKarmr3sWcBXuIw
	 /ZsPv6N3+NJkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAAE3C5B572
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178693683369.17494.16295303214703020246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60bc6dacf392e1dc665c6d1a5bed0bcfe3cf3e2df69e11a0fb51d9eea8e4c08f
Date: Mon, 17 Aug 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786936833
