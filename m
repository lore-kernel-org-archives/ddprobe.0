Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16BDF19A2A3
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749587394; cv=none; b=nQtVheTh+LqizarxsF6UjJkn31ILI9R5wRBHubgzXYaGZNBs3p9JRd/9T/Vfyc2TubvJ7/a6v0yndVmehQ2nYsBPnq+M0DfaCMjj34vWVd4zO71uw96E6xZRJrZ9Oec/CT4ki2CRTgMFBuC15Bx/dIxTjYajIFM/78hpZBOAmko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749587394; c=relaxed/simple;
	bh=a+S0C8BP6TTpEa1M0FMl/807dZY9a5uv7KIvQSstAYU=;
	h=To:Subject:From:Message-Id:Date; b=OdD/90ic+7fT1KmHQqC9tO+Z2ePnbNqSOxKluF0eIpajhObk+h3qPwcZGozewv3LxJUVTzp+AFxsAkJOSWzdzxLiDKGf92cTZytgXVGOGGLrBLmLGpaGb/u6hEBq7Kxo2ARuapcxccJ8b5H/BMv1asQhSfc8Uy/FMghZy/BnbbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A2Vrg2oz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A2Vrg2oz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45B7C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749587393;
	bh=a+S0C8BP6TTpEa1M0FMl/807dZY9a5uv7KIvQSstAYU=;
	h=To:Subject:From:Date:From;
	b=A2Vrg2ozExickjbgfEhbVOk3kd7bqkfrLb72bZ+LVjQDyA4nZi28SbsV4+82p4fjG
	 yS+PnrjDC8qhvbGLRLUHfoykbs/YwBM4yGmNNojT1+hDnqQpeemoZJJGtCNxJMdWt9
	 NaFLSNtw1I8eAWNZgUk0fUHIaqw37Qw8QHaH0PpIDRLs9pNBGAcHaNKjyhFcKKWH7K
	 FWWJt947etf2GK0ivQ4iE5sXh2Xx0C318WcJiEy31eqwtnc0OBWtlp9rTt677b45HP
	 IrFpgJ9gV4cSiT7AR3B4uCPptcBML58fhok7zEStH12mCzYAX9jjBOOZgmUVcENll9
	 gA+pEJtn7M+Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9259EC677C4
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174958739358.11616.13972389814401931163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92798b4c702794eafb88958920186b3366490c797764030e5e99e327b6f42e55
Date: Tue, 10 Jun 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749587393
