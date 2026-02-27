Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05573334683
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 13:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772199894; cv=none; b=lIdL5lCisf+iqZj84VDrFLQ4UOJi7buV+RFjKuCtELYIxX4V6xHlHjEyyD9fhy6+znARzN9EaS5hCpmU012YVPc0z1PxhCn1rLgkJZWYEPl+ujz8A+QWNYOFX0wLIdeJkL2PppbM/jZ87+QccMficWPLDptx0R3WbDO+RgOhINY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772199894; c=relaxed/simple;
	bh=8wb7Wp56G1J3HfHlh029T6egxbdUCjP4G8YZtPdBZJY=;
	h=To:Subject:From:Message-Id:Date; b=WI/SzDGf+kMwQDrLz9z1CiH/69AOxYgY4ewtgq5WnG5XUMFIffIK3IwZeXrM4RaLB8tPr1NCgvKBPDOfAZjlDZ7ew4ipFGeXdp91i7ffcrDa0cCB3g/oWAcE3LqG6HtTCvcJCky0IfMuuv8SCU2pagS/PtvPfwGtGGchF2g4K0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sSkW7jxK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sSkW7jxK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D75DC116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 13:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772199893;
	bh=8wb7Wp56G1J3HfHlh029T6egxbdUCjP4G8YZtPdBZJY=;
	h=To:Subject:From:Date:From;
	b=sSkW7jxKvSmKLpwDMZAGMzeIW0dxgKlsTQMQS/0fmv2PEPJtbWoc4kHz/DVHjquZF
	 BIM52qpTwB9wv6PaPGtD0Iy7U4+HqoPF8GU4I6HzaIl7Q/sGEZ6UnElKdw9TFy+eRI
	 2MILA14w1d3TAzl/ryedIprHIEWJa+W+eNrEbM6rLSv8TtaaV7gJu2fBRypyLRSiMx
	 2qPdGZHDSJXNVPDQBPCURDCyPKOFzoYJDTVdG8i4gCQKYvSVerTO+xdhJIC0L6Eu/H
	 VZlnM2/LKSUtcxXprwlHWp+PxTPSPNG8CLUdx6BaSXVXz7CMs1jHOLquW1UzZ392SN
	 phfqBB98IVqpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F823FEFB50
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 13:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177219989358.5956.12391215555292952001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 692125c3c601b06882dfab94db1026769e06939d647a45466fdae8d96af52014
Date: Fri, 27 Feb 2026 13:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772199893
