Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3810721767D
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748596794; cv=none; b=Mp8oQiNxtGHx5xTELeazYQDaW02w1Uc1+RNs1PWg1h8fZNXnBQ2M7q3ER0J0d900lhqom75VT6lDyEWXs1f9lQAVZrHPZKEC/GWp4Eo1GjmIgy7uDde6S3GsEp5xFaSGmEGDqho1Dde/sgfFwmgsoknPllFH/i/HGpFnz5/UxCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748596794; c=relaxed/simple;
	bh=yvkMJTIF5R6FJov4PvBpknm/MlJaAHvJsCp/JXfa9K0=;
	h=To:Subject:From:Message-Id:Date; b=oO45F/CpZxgpKTKu05FBVSx9ISray+TqE04G9ou5IPVzWYM4c2bTxgiyQlKeSx6Gx3HR1Oof5u6fvijAd9Diga5Qi4jod0ZqYh4WnPbzNwFK6QRrmENCW8xCY0Aa7Pr2Na4TeeDoJwhrxhPFpNdTh/JsegrpNy99CgbhI0bmGvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IYDBtrRE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IYDBtrRE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B3EC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748596793;
	bh=yvkMJTIF5R6FJov4PvBpknm/MlJaAHvJsCp/JXfa9K0=;
	h=To:Subject:From:Date:From;
	b=IYDBtrREdllR2z+CsE7vqpbwoGWob4ISU9/i3IhiyJc4B9oZl6hOGO8Xep1SP0Y4w
	 QplsqoctiNwnnvqBbnQdKTAIcj2RZTZe2x9agyEqNmGfj2c9Yq05Yr3w3TqJt8N1VX
	 ITjXy3iVJh0lONBdNXysyRfjbxaEhxjti5NysH5mU8F16oyPHv2FRMPpgBfh+4nxqR
	 W946PUzqm+XBfuPsWw6AoemwFubU9rx9xOVy6ZLiOnh+Mo2aAlZvDO08Rkz3H3J5g8
	 CWuLDyuVdY0Fmn3NArwV5a3H1vMqoU7wAR39D+JmgEWM8GLnsm6xKV8yPFKolHnEMc
	 7Dex0sD7kXX0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91425C5B549
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174859679358.6217.17994601668725575499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78a3602728d74bad8000a771c0896270e17b46182050e60600ea1c8ea73136c6
Date: Fri, 30 May 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748596793
