Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4700E20B22
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747449594; cv=none; b=CM91UdOCI5GKlL4jImQCrDNb5TTlXk4RwOnSWaqAztXd853geW4+ppFtgp+gbEGhCFh/DFjxES43VGzAxuhn4wy8x/yefsXPcWZfhEWRRy87Gu7XOz+JGpfkegyU2hkrusfnbHklu0CGgNomOsrNq4I7mxXMCH1idJLKn1sGvUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747449594; c=relaxed/simple;
	bh=Lkd0HrO2pM0KCeDSbJWKzJwhgaRujlLjNY30k6iZSBQ=;
	h=To:Subject:From:Message-Id:Date; b=CL5vMYMVlyAxDJBfwmqDdhKyzsE7r+H50tq/nyRenQoVrojslP90tJA+WxWd6AnO11e0IGhsRB/DPOJkbxQebJl4dYfaLbfq6JPhwroHL8vBZTCQHknJVaK78fah5IM+gRDui0cxX+AQ7pdAyXRAYEK3T9wQqNih8ZRKcWGDmCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O+3DvVkl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O+3DvVkl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2609C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747449593;
	bh=Lkd0HrO2pM0KCeDSbJWKzJwhgaRujlLjNY30k6iZSBQ=;
	h=To:Subject:From:Date:From;
	b=O+3DvVklsBS0Uv4iSwr+FdPzu8i8PyhQ3frnlpwwKqVvxgDUKkx3n3DYnNzsCaR09
	 XISKXN/nDs6dI3rkEkJgcJMZuPoNWNN6mRpJW0uv6D+vCag9CyjtQVEKToZGyELB4b
	 Q0KztU/jDUx5z/MGqYXFp1F/qlNFXxbYSXM8XrjA6DFfwoc4ZrLLURWCpPk6OPhhKW
	 LuR4WTc3zxpGiOqCVGD99B81Mx+LVjfqSNNtvZ5DZG8HKWutF6bNaumpDRJntN4xJp
	 clWFWr9tGXeJsO1fimeeD2ygX8BfjRrkfUfDg5r3Ny61kHDWig6spNaxE10+wqUIVJ
	 mQQO8ytiY4CZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0E0C3ABC9
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174744959357.9059.1892366785295759286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19c07e47365e202879fd6eae59337b4e8fc982152abbd23a52efb300ebc1ef43
Date: Sat, 17 May 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747449593
