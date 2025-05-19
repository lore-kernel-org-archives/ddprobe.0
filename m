Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36775267B74
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747640394; cv=none; b=RcYyx1wOTVNGaFJ1i4vADbuIRaUuuCA9DKPtMERSplWLtQVv/1RdBDJnqFIKd/dAQx2lyseJfx1QMRSd0W/pr1PWT5DKhFxIJfy9xN03RLh702vT90d7gwctf6ThcLtKDbKZtJiZgVEFLBS1QtCIgZl4nN7WeMjpCcKdCgeVww0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747640394; c=relaxed/simple;
	bh=qOqTMpeb8M7jEiu4NCQ2E3c55DQHMdBob4P21Cbbh7Y=;
	h=To:Subject:From:Message-Id:Date; b=aRly2wStwpyIpExGVPSpHRtbw5y8RmIu0xh16fq5tiSdn9XCTzMg8m7Gt6pmQ6rEHtlvjuXZ+bX3GDExAVdz6zCTFmw9oOBCmA1Z0+6xZJYuQMFvMZWzeoKwPP1JXjm2oPjdqou3Zy5cIHzRpfsVeXVvRnGO0nOkbfp7R+J4u5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZXHvvQhk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZXHvvQhk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C8ECC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747640393;
	bh=qOqTMpeb8M7jEiu4NCQ2E3c55DQHMdBob4P21Cbbh7Y=;
	h=To:Subject:From:Date:From;
	b=ZXHvvQhkOcSiaw6pbshhMp99SOpsIbijkesy7AyO9MogJWQ3RL62X0k2shxlpD8Za
	 CFyezDcDAv9m8yJcljIfuEwJ1TeB6WgrPlpy71/7u+ks6QQLTOh5OXlfsIDvm/k9da
	 yrBECFkDSMbMIf4RHVC41CLbm6mzQDYPn1o9x1IZznMFEq7lkbzT7J5c02OPFZNkXn
	 RPAL1jQQlVa65hVEVL4S3cz/VqD++5ZLXUsjIV4XL+rr5itB2jI5a0oRp1xi/aPbUn
	 SMZGAkZRb7dTlxoYkM2Y0UhhGV+qjKn6QuZFAZ20FBdxcD73Tsdziby9YmS2/rExST
	 77g/9xrxKxRQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E701C2D0CD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174764039357.16071.1855711547987946247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e40c2d704f6d5d48205b4c1d74356d669cd91a3a7fa12b680a2dd1e0b27fe77
Date: Mon, 19 May 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747640393
