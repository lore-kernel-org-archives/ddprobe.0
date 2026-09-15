Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68FA5213254
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 03:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789441234; cv=none; b=FKmJpKwPdE3t1rTCaSOaip//eeHbSJsuUuCJZUagUrUC6XHiLxNh3jXaJtUnTXOtF4j96dZBzp+n/3VHUpJ4uAZAmTt/O4n1cCX/Us7zXskaLpaj1WhQOFKb4t3Om1S7hQUopCCm/4gNJWdhwak2t88LHdDCaiISYBHXpGs28wA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789441234; c=relaxed/simple;
	bh=IBBCRkB4djL7a6MJvDMyPLer7cKEFMDhtE2uoEKwPl0=;
	h=To:Subject:From:Message-Id:Date; b=mPn66E3XN1CV62ujeRO0ciYg7wAHgBz43Zwreb9hfAoX/dnp5/7w0sQbs3/EuHUyCKBk6Cwux+RYkKmTq0+h64G4+uJTfx0LY6d64iVQUGhehEE/yU1rrbqRaARnPFbuj64R58npxBFSJDqAquLvrfjfqE3pxTQztD0w/bZopLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KOAo8819; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KOAo8819"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF0B4C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789441233;
	bh=IBBCRkB4djL7a6MJvDMyPLer7cKEFMDhtE2uoEKwPl0=;
	h=To:Subject:From:Date:From;
	b=KOAo88195X2oDXsT+OcNP2Bhxo+4exiUmZvALYdQbeePGiEbcOL4rgWCgT6jOCJVV
	 7HI+lIlm+LAsmtxS+xkIhgdAT0e99m3BvbYYyl8FJ6dA3Pb0R8garKcjh7SQnP6/Zy
	 lkC1nk87e1+OdG1cBo1lncdIcz+M67lRMD7NmUf/nHK6Fd5EHCMBuSj3ClMR3h05Cv
	 cPzQGoGB1NOTNUX6OSPMyVSJ4/1wDgZlOm03BcCDy/qXQluhO7z7/ZOETEaPD3GeNN
	 FHGKm5TtG9nQjUHotEalWvhLCWCZejVeDSjwg1KesiRbHgeeV+W6bKH6Y+1gHnmU1a
	 /FaIdhOk8G4nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC82AC88E72
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178944123373.17179.11756287339177275129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6ac332ac522eb50cc4a096f4e178833686663e41e5b0ed11ca824052118678d
Date: Tue, 15 Sep 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789441233
