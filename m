Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A49B287510
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 17:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766163834; cv=none; b=J7u44ZpYJCLZGTpCZ/7w3TNHTOtCeDPuEC1JcTGR3otQ6fCUjxA0pkLoJCjG7u+FcWbw7AdDx10iJNtl8YdF5rCbiCeytF038cP9BuTGnTuHmJN7VgXitK2uBWQ1Qyd3LHHp6wM7oxHyTC/IbShtT5pSpsIsIM8IxBxUsAuY8A4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766163834; c=relaxed/simple;
	bh=wgeZMbJ8KfAK7OAbWibo6vvkLgImY2fTOyMntOAOKRo=;
	h=To:Subject:From:Message-Id:Date; b=jopLhsRKkHXekqKX/JD+zTogPrrnX+KG+QNGSQv3hVTOlYelDVfKDdDCcZ448/ClItLPPyp2L5464yUVdBBY0ZMWiz2yOyCXPjz/vg0zOVr5BDdR2+iG+3VVhFSIhr9u6jSF6/aNBCsMq2XYVDcbz3Nr2rfGvl1H36Xh5K97IjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bPtfmZxV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bPtfmZxV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09F0C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 17:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766163833;
	bh=wgeZMbJ8KfAK7OAbWibo6vvkLgImY2fTOyMntOAOKRo=;
	h=To:Subject:From:Date:From;
	b=bPtfmZxVpeDutjY/ba0FPSVF7Nazh8W2LDxFHTxsuLcLBWVNKp9L+n7WXW+wYsa0u
	 sTdCstH12hjSy6GO/BZ8hfygRTkbPNalI6VkWKS3SrMuNMYwKuLu/22IMc3dawCmA2
	 L5qjU+OSv5GK/JrrIWk5X8fUwSxRTjczdJeqjhWkegnvy3XWhY0MpCKNhzbuQ0eFKN
	 PgEWFt9DUv2e452HwmImE9qHWHDJTGvJpPddz2cFUfUdaQjePt6v/JRHyiyjwmOKAV
	 UydIJaJuNBOSbnoVCryN5X/GoVR3mbJm4bhaMkHLQXjU9Q3h2tK4nVsOL4ov7IEzUb
	 9wBtrUExOftLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91490D7879C
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 17:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176616383358.24666.538119403245652360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e64945ad446fa173dc4426a0f014ecf3196d1ef37fcae86ec1238e563fdbef6d
Date: Fri, 19 Dec 2025 17:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766163833
