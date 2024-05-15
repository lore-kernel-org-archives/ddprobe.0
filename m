Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F3FB155A26
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 16:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715789543; cv=none; b=Aq5EOZQeU2VVP26D6VP/Y3Wn56SVYaHjjPt5WNc+/tbBYPZ+3G48t9zSZ40M5uHr0EbPKSvj4ZVdMTB0YL1mRur1JA27Y5vkpZwZgi5+813gbllz8WO1x+juawQKYMq5gwXyhCFrp7GpSgUmJX2FFePm8yDonBknPUmK+YnxeIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715789543; c=relaxed/simple;
	bh=X7YtXUCYVmPMtIwV9CX6N9rlMD+hTt2nTTTWCz8VuKc=;
	h=To:Subject:From:Message-Id:Date; b=r+oIynHj1UPthupj3YkcnFrFD1M1Fw76qRPzPZqlhUI0Gei/k+CL189p6xqi+9onE+1HuwdtZtyraARmbBTNAwUUECCrALI68GjYpdis/KTOr/SU6bvt+fwM7uohDv+HsataO7BhZdZLRt9oJFKSYBRjEbA6pM2fV7CtdPslwTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jzI5NCIU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jzI5NCIU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3BFFC116B1
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 16:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715789542;
	bh=X7YtXUCYVmPMtIwV9CX6N9rlMD+hTt2nTTTWCz8VuKc=;
	h=To:Subject:From:Date:From;
	b=jzI5NCIUBZCO5Vv9NuXZBOpSCTcD0KNFN2p1gsOaus9n07dRuEn2xTvSmocxQyDvY
	 q1tlnvkEcdDCerw/DATbU11zHlNBLWKNoGSFR2Zao8iM8W3+TuMJzrcF6YUkPIUj2P
	 Ow+GNE5MuZz8jKio/lADmaDW4bKYgxG2XsaACUx0q5MNVUrpu8g1so3wlyLp5DuRLg
	 9oLrjK+DEB8GWiH69qCX/VKrEPlm65+gfC4pWhDUXfGMnjUr8zzDuHMIQ2VtlzIFxa
	 ndGwydwpKua49WBQRE8DNJVAhf91sZUVEwaD2NOqSh/a51rxLISfV3/X6Qz9yCabv6
	 lKkJXJoS9x6uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3BC3C25B75
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 16:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171578954278.3248.9574845842488372427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4a091187b2764f4e5dff48ac597bf44a10af79359bae227794f0000946d0cc2
Date: Wed, 15 May 2024 16:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715789542
