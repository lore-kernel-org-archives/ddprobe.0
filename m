Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EFB54431
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 03:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741665534; cv=none; b=ibTRXKjagijcCKCWnTc02WF+2bOXHzbbxVLE1M9dtniAQbV5GOx5JvKY6v4XmlQYyOwv8jE2r/a2th5xva0JjkwaygPLBQ2Xjd73mFlkN4v82YInjTGBehwCNrBUGUSTOhsjVoty4mD9UBv+/y1CzbHWZpGmmfA+iKJZnFi2kI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741665534; c=relaxed/simple;
	bh=5O+FXb/Mr2lXb0p50sT6UVgVwASpAJWtsuF9Vn1nPIA=;
	h=To:Subject:From:Message-Id:Date; b=HWMkXcxFmeop5sIviKA/5i6BTZUEF+bMqfDT7djhjzm/6hRoQBWCkFPjXm2kqu2kjsCfOCtmKzyBxtz7tu4VPMqblBZWKyiX7Oa1LYZyH0IGC8pcxZffeonukOgmcHtbXMLLdMscIEoJiT7P+ZglO88HvwxrRZlo+6JGL+iZYns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l3XlrqK9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l3XlrqK9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C00D5C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 03:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741665533;
	bh=5O+FXb/Mr2lXb0p50sT6UVgVwASpAJWtsuF9Vn1nPIA=;
	h=To:Subject:From:Date:From;
	b=l3XlrqK9OQ9kaG9ekW/EFQK20DeFFRFejrNengb+Gh9B6+OeHs5v+KkSMIvIfDRFy
	 cH+KDItlTWD+poi5Okw9ur9AcR4deHsENqT/D+AuYtXViOVhPWivlsPyfU3p3X8Nj/
	 QeGzQ4no3Ugjx0iV6Rond1Lr5uHAxmvL2qx4+aB/cKOWZUAONNxnsNAorVQMcHhb2K
	 ekrxUpNlwOQeWtLY/ecTyWUf+HJ6io/J3kic8Ah1m4QCDTqvmcQzz6hbEs3Tv1U0Os
	 9zhzJ5mkx+W56HZSNJTcv2f2XFwtcxIcsVjZw4oThD4Bcj2pB/FwCzuL9riEom31l0
	 u8X0+bDG3BDSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DC8AC28B2F
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 03:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174166553363.31493.2691376932361418708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 790fdf6acd41bd0eb0f757259076b604bfc95ff67e0d7e0f41d5b5faf271617e
Date: Tue, 11 Mar 2025 03:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741665533
