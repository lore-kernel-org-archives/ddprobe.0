Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C83035B644
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 10:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778495434; cv=none; b=F6ZMmiYh6StER7kDTjLu4lT7WSHhDY7LiZNLRDjEp9ERSyP5r8wNn+mPaY6Jy5KxU1spMeOy5IcyKYZNi+dV/BRlFXyL8PwOtV4vspC9VkpE4a5F9Tz4IH1wJyP587FuFnc3d668n2C5loC54hSmutjvMvwgtmR6H/XqOuqHd/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778495434; c=relaxed/simple;
	bh=pvMfkIe56Q5T2dIUc2MZTV0OAonha7cvrBDSdtP4RQA=;
	h=To:Subject:From:Message-Id:Date; b=qtdZBXQU/7/jF2SJJNvWr8190C3MkdHXujzvJ4f+T83Bq2UJIY7pCMdMbiGwrdv/P76RBwzJTW2fOtYIBdpLEmODvEFUBTZG2+S/5LkhvjluN0xxqLjcNOH8CvAhlWWlNgLiAmrv3q4KKvE5rrJecX740BLbZWTCaFQQMNTDYhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pm8V64Nv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pm8V64Nv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8EEBC2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778495433;
	bh=pvMfkIe56Q5T2dIUc2MZTV0OAonha7cvrBDSdtP4RQA=;
	h=To:Subject:From:Date:From;
	b=Pm8V64NvwlBUKeYGmXC/ReG69xNQ5sMKApz4Nj+ht+XTjCXRGxXe8QTFqLSJwebgg
	 s1HD7+v0xAXpvi5z/yqSS9TIlDGSRG8Dz6zvyp9Nfg0/f4hfNQvLaqW6iv+cvjth3a
	 3eUYhcgkvNxe7tCrzaclNoINP8Qg2KyDk2WF6hDaXagnpEuaWEajD9cgydnMPsLoJn
	 QYCW459/v72wLBUQGLN2++oL24ToIwrEC6HuLsvM3HZBwa4zJ4ZAXcI14yRrpMMyGp
	 RhATS5NO5Z2++aDjlQ5V0MOZMCWtGlQJw160Ek9hvQTChZgUpg0mAEXxNkvtQFZn+t
	 bcacRgjyL9zMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA883CD37B5
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177849543368.18647.16609719460166205849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6d24ec71bebe30dd31f586633451fda39d2418637ffc3ea774b77a28638b818
Date: Mon, 11 May 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778495433
