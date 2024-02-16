Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1482A320F
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 19:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708112297; cv=none; b=bSzUNnOSI3cNvovTYeA/tu3v+hFWge0QHsQQ6wZoP1vx2UwTUxsJ8D3p5fqbAqSaTNo9erW6RyX4LBfq7JWiDdWc8vRgvv2Fy8uwvLzExKqdXb8/QaWBzERgaEA08d5tBCnnsouSLeay4ZRMUdUYQe3rAFAocx9Ngm98uABQJBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708112297; c=relaxed/simple;
	bh=Ae10uIYH36p/Caxu78Kz5A/axXhhzYvfBJ9BLjl35wM=;
	h=To:Subject:From:Message-Id:Date; b=ACWE1e3e5CmVCZ+7qVy1YNcpyjp8hvnGU/TVNNv9MxlFns6i5iD4WhWsxg2jtSCV5QePckPO03oqL7v812gB9nvApFeXq9ODJ9TaY1cbNTaEG0HnmydzvodrGk4l5rtDQwilQMcICaXtb+yOnCBhHBkEq2MKwDfr0Fdw8+Xu9+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n67U3Ool; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n67U3Ool"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CAACC433C7
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 19:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708112296;
	bh=Ae10uIYH36p/Caxu78Kz5A/axXhhzYvfBJ9BLjl35wM=;
	h=To:Subject:From:Date:From;
	b=n67U3OolnWtl21uBW/jM7EFohtRKYfLjHIkvFEnbogaxrOqCMaVGhmqt+VDGpxLwo
	 IGJlo0fPLjR71QoYaBqd8UCyGBC1YF2BU9Aig5LDKg/S3XErRUeBT640KJBR3iY5zm
	 igXtih1rY+v3ZbagjcpLNOw/OBw982HBxATmNEfZSAcD4AW0p1prR1QjnJeg8tx9Im
	 yDMU/W3rboFsey+oUdV4Qp3KhaI94OaIA1jdYqbM5xiWKbwB2BVg4dVyJZAW54dEc6
	 vebVLbOhEc2S/mBgBnYRwwdz3YfeZpzsuy8amedJgLbrIlT3PlOK3axIwwAC/cwClh
	 4tZ3rnIt2Cb7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61842C48260
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 19:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170811229637.6361.16204783919604367965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b02f13d0ef3ee485b11b0d8bef0f677777ebce6e6651fe02f5c9ea346110c777
Date: Fri, 16 Feb 2024 19:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708112296
