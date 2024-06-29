Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B291EC5
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 07:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719646463; cv=none; b=fTLv0Dq9oDVo+lY7OvolStfV1yNpZPzN17eN/24os3BnwOKwQZV0l+8SHaawcf8mBwMd4Jz16oRYTRE8T/e0qvp7NBX0QHBqQbHsnTriny/Jk2lz0kC4k7ujB+6ToALLY6vnX3MN8/FEj/M2AvLy3uIZW5minypMvGpXkrXLqaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719646463; c=relaxed/simple;
	bh=dJYNqrL3xCOgWdrsULlfxqERT+zPtRiOu2jrMoFJYi8=;
	h=To:Subject:From:Message-Id:Date; b=ScXVCSfErdB2riJNBpYxQQ7De+X+uE3k//ZsYS+zuAW4aTpQ0agFDtIKKKQy72ijn1nlygMyt+yAecUkI3dXZtCLBtoxKyWhON2SCP1xsMNwT6qtxD1GdWA4Neg1L1Qgs8Ka7DHKTt7kHlPf6ZOl7uLft1EK6zaS3q4nEif9nyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R3yD5/mF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R3yD5/mF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EFE21C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 07:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719646463;
	bh=dJYNqrL3xCOgWdrsULlfxqERT+zPtRiOu2jrMoFJYi8=;
	h=To:Subject:From:Date:From;
	b=R3yD5/mF9oaMlpi5Xmvvg+zTAyNEPJ4j+HXrwolRDffojHIFEiHtRw8PHXB5znd9W
	 Xz8Nwh0n67VRNMgpzLL2YbmQYdnDhg1GU63LqUr5U3G1GQXeZqOF6nf2ClU/TCeudz
	 AsgryPPOlTcHZuIohMfBXKAYoxY8mLtsAKp32ZzKgjX57chTEPVsu4++tFSDQ1sOOU
	 vhMsHTe5FPBtxXkHyg6bkEtn6Ez5m/8/ll3em8YpqsPpSwbmQ9pdG6U4+rgDn1X+xP
	 7P6+Pez+kP7VVJ4G3bt30ybCQdy2xj8N8msSxllQ4z6nKWdSjdLOyshOhnI21Y3OXt
	 w70en9Myces4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8986C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 07:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171964646282.28364.7332364968849294303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb6015039019801dffba0682859b0806e0b862ebd04aea50351d5d5aa808b310
Date: Sat, 29 Jun 2024 07:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719646462
