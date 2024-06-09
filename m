Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 651D9613D
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 02:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717901843; cv=none; b=GSydLJpZX1OJzLAkzi6iV4yvZ90yj58Rt6hNQXPyxompt0Hs2pjeDbIWnkGQn9Yrk6i6/oIeWesla+s7fV/G5JHegdg+y+DlUy65JG1j0tV+AKf16OnCkJ2U1JO0XzWEgyeuqNKiQEUU7ertowpfA1eqRjsViXWkcHBmmhv0pKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717901843; c=relaxed/simple;
	bh=2aqgNoPYAbamuip/r++GlJH/IEt51AHJx7iDK2cLkBs=;
	h=To:Subject:From:Message-Id:Date; b=eI2GVA4a2vSKFRkcCakqwECBbwh7Q0GglX1Ru1l+usBu+rzUpNPsJCOrI4v0jTPd02IwRbsPDBGaOfhqVg3Opk5el7mSNOvnfClTrwQAH/ULjJE434A6CIk7W5O5Yp1PNtgP26tz7geTYnh9LqgFUdptPTzcgppo8Xs/bNx+6C8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GrfCJkDX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GrfCJkDX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDC04C2BD11
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 02:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717901842;
	bh=2aqgNoPYAbamuip/r++GlJH/IEt51AHJx7iDK2cLkBs=;
	h=To:Subject:From:Date:From;
	b=GrfCJkDXvdgLl1K6w4u/A2XkXPdVcUES3WeekpX5EwuNz1Ak4rOgLxNpF5my/T7+j
	 dYTIvE4cWjP7zF6FLVZy+n/aGNCrc/oqc5fU3E9euSbmG0K2eOgotBzCtxJLw1/pRa
	 J4v2oql/Cxx+4GOYe7m+BHThqy6MsCSlP8XTnb0GA30V//KcSMSOuotr3d3mGDgsZ6
	 EefK3wBmVurv7tkkV3JqHRVX86zYj7BmV7JCHuKGmkJu51+BuRpWlGP6n87316wfFZ
	 hp4DdlczLVRI5g/s3Dt9Q/rGcPjZXv+AMfu+LWmgFFHmnrbaoSi3QINRFuYMNOgmN1
	 VGAuW3irMqBBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7F01C25B76
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 02:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171790184278.21234.9146023582044012142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bb944b1228aee150d738fbd408975e0b83e744bcb1321bee7faba793d46a5f5
Date: Sun, 09 Jun 2024 02:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717901842
