Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 273BA175A9A
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 02:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777256854; cv=none; b=PvjlFIUb+mMevCh8JDLr4+9DQwodq3QifNJkBZbKL7Ffc7Exf/IjpqYeOaJKhVj8ehZyS1iOdWPJN3PSuSuzec5JYcRrK/Vd8H8aHfKDlfOGZg7wZcfyF1rrZ7zibvGY3aSTCA4HjVVeNRSRxpJa6AlwS41p+DyKvhtAvACA5fU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777256854; c=relaxed/simple;
	bh=yavwmTvVF8/rHWIAJRLJxKExvm80je3uiEUza5d4cTU=;
	h=To:Subject:From:Message-Id:Date; b=lyjz+6iDP9y0wcQKDGcb3iv00x+kNO4qhgaeSFTHRFdAkEx5pN5QZjaaE8tBApgzXQqJ+EOl5u4EYqQ7ZTZ4RimUpbvU91AUuRiwxbgtO70oaC8xP1jVCYLNNnhFr8Jg6+rPBjRlNre3V5Tt/rNlPLpM8Yho/hDg8DOihUGFBeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mMrZLEeL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mMrZLEeL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1A6DC2BCAF
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 02:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777256853;
	bh=yavwmTvVF8/rHWIAJRLJxKExvm80je3uiEUza5d4cTU=;
	h=To:Subject:From:Date:From;
	b=mMrZLEeLC1EaN+VB03FJ1qAZcYNVF2ITZbJTHtXFIOvJVSYd7n8V+Flo8MCP+G6NA
	 1NPp/4REW5gn4SHetEGBDpnHNlztWS5ONNLuVLmzQTzUaJtGfawzohkpC0crEJMgcq
	 gK/yGA+RFTm8/Dohv7hcRcCFFqENP7Na5plbD6xu9UwvsAILXS5e45oe/hCOJ146FF
	 ypmKKYgFgjFyczrHMaeRiyvJ+nEw1aDuvKxVSYv/2x/YtPCTMtQ6hv2ey9yq4GoMiS
	 MtJfvHDFGtGQCAXQLWYntxi1Clj8wrfhtWEPo1pdH3X2X2ZY1aASg0V+zrxX5RMdmW
	 D6QupAWuyWTCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0DDCFF885D
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 02:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177725685371.19551.18015659452331422640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c42ea3430610e6e248b84b77662a39634262ee2d15d1d692a395242b4c957aa3
Date: Mon, 27 Apr 2026 02:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777256853
