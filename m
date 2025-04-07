Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D7F4145355
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744009195; cv=none; b=Gzk0wHYL1Ycdwurd47Q1jCXjxRoaHew2hSAvd/vXW+esaresglG4zQEl4BgeF+10/d57VJQN7DiVbcutfHJvvlcMdpEnEbtmJ4a0hNrBh+TSs/O6/OiRCsppveyCYEKcgrlVgGZ9jfnHq6SYp8fCsrz0AUDSaXohJk8tNO2h6aI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744009195; c=relaxed/simple;
	bh=asbJ/uspO4wMthhNZyR7hSD/uCLMA3aeUNFs8rKG/UU=;
	h=To:Subject:From:Message-Id:Date; b=T0AcTsjon7PN+AYK4XZ4ZyyRbWYw2CZqXqhz/tfYxacdvPFpZOQ51NcT2DdiPPhxg15OGSZrxGocFADCbXueq9kwsVMRcOqAd+c1hFbL/pTOpzqwm7hiGkuFZDj3ghZOWf15Ihs6M1ixuapXzGbWrUG7HPdDh3SSDdRgqgWYU8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U1GgiH6i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U1GgiH6i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0ED0C4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744009193;
	bh=asbJ/uspO4wMthhNZyR7hSD/uCLMA3aeUNFs8rKG/UU=;
	h=To:Subject:From:Date:From;
	b=U1GgiH6imkm5qpD+nO3tKBlbMcn0tNy77lWYE3bc3yvaXf+03mwI267KhfQcTELHY
	 4NNxjsR9uf7OmqPO1hP+M5iiXiEKH6Smv0xb80ZWJ8lxU29ftF7h8C2gC1rVsiQIPr
	 E3IsNC7+H2/XMrQKhWxd5P7LO0Uii4q6yJdESFOfe0s2SXgts1d14pB3RLxe1kw3Dc
	 4f4ntavZysQWDH/CIHe5no2YN3EbFlsFCILgD7885PAvphQbTMJBG4HlbUw/ilpiQk
	 W/T2n6n/PF5bcn2ZfbEKy7aZbmiyWNMw2d5G+TEFhywBvMmkyjMD2W57X+O67TvaQK
	 41lDHE1lpbUaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B965C36010
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174400919362.18339.10071461368864326816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dce201c5adf5e442a21136c3aea18eabeb88f5b122824499121acb82f218d51
Date: Mon, 07 Apr 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744009193
