Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D1E436C0C4
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 07:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774682094; cv=none; b=djqoaISBRExzCMOmOVCr/ILZe+OIuF5Cj2x0e2R3zr6D+dUzubpmLLzCzwYZEOsU22vEmpHM2iiKBLOvbpQIxaClxGoVV2JgnarjAX8MmlZ7UG5TRy9kY+s370WzI1GPnEbMGxQr75O6/GbJE7IIyEZOiHxMw2rwCEmnHCj/nvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774682094; c=relaxed/simple;
	bh=w/TO0uNgHB6JZw1/Eib8D38Q735YF6a2zxCG5ABekfg=;
	h=To:Subject:From:Message-Id:Date; b=Zf3QxEhU5+VZaxpZmvAYtG8DYC1mabcxXQoZGJRs2JZryrRnUQwhobvCRnfoKsL4AZzSRaZ0RjWilkNRKGOUSYhIngkz32vPvAfzreMwRhlGVyh9y3fdtWjVmC1mRsPFEcX4OpHYGtyOAGbcOwx0UVcVdUG72blHOCUcx+rG9Uc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iqqGhbhe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iqqGhbhe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA51AC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 07:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774682093;
	bh=w/TO0uNgHB6JZw1/Eib8D38Q735YF6a2zxCG5ABekfg=;
	h=To:Subject:From:Date:From;
	b=iqqGhbheqWQIhBi/SpwwnE16JPx7yYHH5WDL9BvG40JINdMnB4WNj+ewBq4MT/AA2
	 Osa7NG0Kml7RNpM3S9csiYF8WbEbwl9ORFcZWmJ+JboRsZFwmBWlCBdYfWAcEbiaOC
	 kzzeR5Sgd2O/wpbYmZnCtzD+8QEdeMwZKV1zEmT0z4oOAOtzyVJmAhILNRSOUagFIq
	 LvcZNdaI3n2kmd21seu/c8GCRjajdD8XN5DZkcGbFlTHC0xMingzodaKDWu0uQ8pGQ
	 OhJJRbUUvVFVstP9+DcKvu5CBdzUjtYM+zwiSb/3PVhBpG9U+Zgop+wj//pBLlGgdK
	 gyGZDk185Nrug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DBC10BA424
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 07:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177468209358.9459.16579646261842110120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17aa94905f77545de6cc6dc047ca45ea9307d961a3c1a9d1544b16718575508c
Date: Sat, 28 Mar 2026 07:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774682093
