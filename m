Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61BD419E
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 00:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715817743; cv=none; b=JAgVTV8F9EQ7x5eJtlsYhHSt8enQJuFyAH9cEzWjYuDtKTjzTFzxyBg+uDLH/+l8BSjxkdHi3jnxedenvZ77flqdBlUNsoNd+tC4u/pK99VQtA2KQ3aJLO6Xer2EFIO+NUxK0aoiTr1f2DymufROR2GOtcUqd++rNPVVFXbp+rQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715817743; c=relaxed/simple;
	bh=XxXOzYgF5QSLc/LDR7ZWYlltG7uPHfEhiIZjo9iGHpM=;
	h=To:Subject:From:Message-Id:Date; b=BYDzZcbKxahjdRVTplW8R1y0t5QN0/LRIKn3BwcIWbI4aYbxWDNtTloHoVb9MB5naG63ug4pPIRAuMqV+IVAKDLHxYCTiJvqFegO744nyrjBkY/oQx1jsCJiDcVDBRiHQz0bKNdEOFOZQKvftFrG7s8CxetIkVn/PUZ8XpWSk9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TDPhw6b7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TDPhw6b7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7E49C116B1
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 00:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715817742;
	bh=XxXOzYgF5QSLc/LDR7ZWYlltG7uPHfEhiIZjo9iGHpM=;
	h=To:Subject:From:Date:From;
	b=TDPhw6b7VBmQlreq9uX8KeZyfVD994TOC5thJMyYKy59PMUc8wNNROHp+hUmhVQSJ
	 U5nSYPg4V4/JEl5mtvUV2dAI3YmEK3XjThTea7AP+3tVWNOedeQH08bdbq/WoB+bq+
	 lY9A+t3wOeXcZOvSsgPH9/C5k7DsZO+PxYLFV96+7S1IDLYMpUnnBMV48X83iClUUE
	 fm26Y0PIJCNVNPejhIHsCkn5RyeBXx2FDIof3Brcqx6tsHPWO8tdKUSL84mlsmxO/S
	 OQxrX2E//hy9vHVz1fVTICkTnjtAGDNCahofyzJ84kTwAODehJo54My3Vw07gE1vpx
	 MJ1gbCQaMzufA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0556C25B75
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 00:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171581774278.14537.3677945115615394902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12a96db1f63270f472209daee65eaf817042c2dd9c863ae4e26442ec93ff55a8
Date: Thu, 16 May 2024 00:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715817742
