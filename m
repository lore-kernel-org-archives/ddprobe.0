Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD4F3315D29
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763066993; cv=none; b=H+NHhv8bnclJgAyDNnUX0DoQmSxne5Z4McbiTvYjryoRhzYaEilXS0OSdbkfXdTGFQ1n6wckv0M3lmaaIQ/bRS41um1FUQns/Wjsz9FRUXJLw0Y9rnhyj+Fag/P53/+dAo3d77Xzol2lUyb30/Ob/cQatcErkKeresxqcJJUroE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763066993; c=relaxed/simple;
	bh=4aoCK+hAnJUUc85yREqOpxBMg2t2I7XHDyur0rRTdvE=;
	h=To:Subject:From:Message-Id:Date; b=BuN/c/vSsfQrhrHzoTZz2WdltU2mH/mc+YeIOOvp7NICSKUI2AHeE/T7euR7khRoXvFb6h5xD0qUTnp92LCCfgmER8nDSYJJvaAAkC+vurqZqZtvx2MsxiLKwOlRp1X/PrNgB2qBQ6OHccIwhk26wNc8XpRbcNPrnTAUHbvEOWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PBnHizKD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PBnHizKD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E98DC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763066993;
	bh=4aoCK+hAnJUUc85yREqOpxBMg2t2I7XHDyur0rRTdvE=;
	h=To:Subject:From:Date:From;
	b=PBnHizKDxMVZn1gZ1V1EwBxif0Yf2japnMh2e5LknSGzeVVYwGeAuHDnMj9nzeaIM
	 ZPMkZ4aWhnXgYay/xO/CoQ+6sGOXeYLBGll6I1PHJJ64Lgv5/BgQlYaAcSAjtAAGap
	 UbAAPgxRGc30+kdXpF0Shc+Wgw7IihGNO6lR3Ru+SX6q3ba1flSFo7Rf3qSLfa9HXX
	 lZj6AhZWpOZNkHHb7jNdNtZLR8LYJTiQHVlfp42y7sSK+AAnMqw1D1XvUpXbfF8sdF
	 weFdjNRHt0L+QAitUJR9ySQBIIaXRzwlQiMDlgLhNohZv0hU5iM74ClkvXOwA/Q/lm
	 jBoI2z/poO/DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B2ECD98E0
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176306699358.1606.5929002668521763398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bad20cf21f3070ffa5418588ba1e67032592d5973ac4a581e581b1033e9ded53
Date: Thu, 13 Nov 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763066993
