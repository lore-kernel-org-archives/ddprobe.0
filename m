Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED232DF6E9
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 19:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768851834; cv=none; b=f4cq/z77hS6IZVSUblm6A3g1XA6dMWghCFbo7vpuda3NMWLJG9PG87Yq6CGEfq7DMehu7dm59zbFiLq0Dkmur8JgHxOnNuGfrzFepGB/dGJ+Oj5VAYDLI+F4+2zF8pNaDNCJOlAcOCw7Ds0cMqCysNq6VUpSrjx7x1qGO62P6sY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768851834; c=relaxed/simple;
	bh=aucGRZ8ps/Zg9V/a92wgYmChWzO/7rse/3S7lC99rW4=;
	h=To:Subject:From:Message-Id:Date; b=nNALnohXOdOtIE84dmgPpbr28om0M8OAJamyGgwVUSeY2q+kqgYGCfSUP4NhluhYSu4GvnjTTLBlLEyxOspMVc8Bk69oSRi3LUFjWkydtlGjFyzUXgsPdMGKWXTSJgXqRURUAJEGNN77jVXzqvIpSn/b2WipWJXPWOwz1Itvg/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uKZDtPht; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uKZDtPht"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F5F2C19422
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 19:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768851833;
	bh=aucGRZ8ps/Zg9V/a92wgYmChWzO/7rse/3S7lC99rW4=;
	h=To:Subject:From:Date:From;
	b=uKZDtPhtSQovfBX6DvnDwA3UpgGiYtIKFwxJju4Ry/g+OmCnU/mDgzxRzhccZsB4L
	 AOhAA7oaje90NajhUCveYQ6y7nSIaerLfB5EsIKDXDIArb5r47eqH0oH0scDNbp+/y
	 SzqxkiyOkoEyH4I/D5DllL3QR7C56vMLqazYFIp34SJfOxWXxQS3pM918osjwYQb8t
	 qQEZSyf06Yw2GWBiWWF9SkuVqp1+0tPXMWPPmKU9cAUkcSd7RfHO5o2uKYNaCzlvwZ
	 V+4rKeskS+/MH63EGOGwVCUPb4B6h7DGscpq2ttkWt8heNr5LLKSk2c2PMxKs2E1b6
	 Ebwz2wjrmEmPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906E8CCF2DE
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 19:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176885183358.8386.6177400996987124204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 875095e9d58a72aeef5415722aefdb8251c7ebd64c3259475ae4acda942205c8
Date: Mon, 19 Jan 2026 19:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768851833
