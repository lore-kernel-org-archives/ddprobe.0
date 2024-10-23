Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D57311A7270
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729684553; cv=none; b=Y25IS6W38VGRfuVwTJzStNZBF3Hnx+gSDh3NhiB2MII4LYFUtSVX6zgCqGawbRIzvscQ3r0Zve6jlCbmuKP25B70bMJDttBJtn00pJdQ9fHOG371VMvSNFAK2jay2gEwdFnmKRpkwZdgLZg+D1aDKe20lH7EQQgltMvBom8JTu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729684553; c=relaxed/simple;
	bh=doWFk/b0qvbVte1bE56GvpEAc2ZVXDmYuOzEjEAgu5k=;
	h=To:Subject:From:Message-Id:Date; b=fWGbHJ9tf2KQTN+UahanQjfRNV0OEQdkQTj8o1MsxJE1oCoyK4BBGFxacj6Fpy3O336i9B15lRUemAy9O/TIPo/zsNlsvNSUK6yonClTTAY2vnaPhs4Y1QJgEtB5KZeiznjopvi0eM5DIvaH8POOdPYDHd+/kAPABRICuvjanpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X9mBjKdD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X9mBjKdD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9AA8C4CEC6
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729684553;
	bh=doWFk/b0qvbVte1bE56GvpEAc2ZVXDmYuOzEjEAgu5k=;
	h=To:Subject:From:Date:From;
	b=X9mBjKdDo0MUHIOTFTDp4GseQW5CfXrInv/MR+pooPcZrAha+vJ3st5VJa+MzkxkR
	 SL44yhmStuVvt1PcfPFYKbCTNnquGtQsTdHq0LPZmt7oW1te3v2mkc330mZVJkoDAE
	 +HSoR0tFdtvWA5/G34H6r1ICyxg9NvpEXlTfmvKpUpCmHsWg+WVnQpKyiCuEYS4r0/
	 WKskCsQMg2E3dcRUXerYEASsyf1cgzYz6X3I7wjUOTQtJOgLJBo0Bj7w7piD4+JeEu
	 vsTOuVNyq2N10SYAGogNzxypOG7Z9NQgvvi3gD5QfkFK9Rmj6w5t+7pqh/22iMxdTG
	 KeIvyTIGCnc/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F3CCDDE6E
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172968455360.28987.6853530827848681529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23a8700b1b7afb06bfa15a41949dd73820823da57c85fd8475121a89be0b50fb
Date: Wed, 23 Oct 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729684553
