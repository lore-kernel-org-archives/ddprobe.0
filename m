Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D0FA42E425
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787332234; cv=none; b=pnKnXFJxgCQb5lY2XfCVCg2QVZstYaU0p2X7n0CmkdJowR7rSP1ritIYlTRN/dITEAem9OR/s2n5oLEDMBi1dtps2Lu785eEuYkwNLCyvKRuhY2spSkAdPQKErOcuRA/a5FvKdSSFT74KiLXr1SMWuCjnDq2ICLaLiwnB91cF/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787332234; c=relaxed/simple;
	bh=ib/4lhJ1F9k60jOzsPFLF4aPkV5n0dkspMC0WC20aBQ=;
	h=To:Subject:From:Message-Id:Date; b=M95Uo/+z5VUb4p1oCwwuiDKmpqXr4lRojxpRE59TZ2wnPqp08YiPDf9sOkGZTbB6lpx490W7hH4mZNuXPmBEMiPYiLko2Z4YG3XSz3ijqAURRqVwMQzZi2wIQgLteXKtMXSmqQeRwptLQJo0EBTMZLT9yBT1U9OdQPoxJ2ektqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ALYT5xqR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ALYT5xqR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC8DDC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787332233;
	bh=ib/4lhJ1F9k60jOzsPFLF4aPkV5n0dkspMC0WC20aBQ=;
	h=To:Subject:From:Date:From;
	b=ALYT5xqRy8YHLoaYFUsPjqBW1gPV42pUcEzoatH6OLIy4VUfgMbxtfrmk1N4r3D8M
	 Sh9ztutT2ab8YUdvPdrv10hO0aFw4rousidR43iVv1gPyxrPk4ufs9aor0awgcqs2e
	 jMNeWMcGjzPEDjSPxTsehWPiKt/8EZssJxj2yZn4wbQOGnt/T7E95o8dZQQHbd8ed0
	 oPytFIRBXWhvfsbRjI2MdfBlIdZRD50c92UzHCaPP1K2kGtHcP1ix6KJizIQuU0tAx
	 ZNlUzQK5TdnrhP4Fqop9RdCUfqjO3iSYCx2+L0cu57jlF6Gb+9n6qh/38kTIKqmtLi
	 75B4zVuWvjlAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6409C5DF94
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178733223373.7876.16800852193315279620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3252e20634e540412b947fb6cef1ac214b46641a5f791e364bc75704d51872e7
Date: Fri, 21 Aug 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787332233
