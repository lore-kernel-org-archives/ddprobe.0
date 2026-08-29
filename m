Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62083D531
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787977834; cv=none; b=aVgN6RT6sZfMp1Fgj++8ce93ukTYObkOkE0UgBuOg7OvFt3agQsaLQOOb/K91CLKQdmPW/QEFvcM5ggLf1zwQcskqBVECw5IFQz7pdECccNREO2UpnqKJJxTova2sENmmi5Z151d82T0CMMZWXD7Vftd8Lz7NNxG843BrjdxeZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787977834; c=relaxed/simple;
	bh=Xd8gH8Sy6mdbQGO6H8KBRTB58oU2x6D47ar/orWvXZI=;
	h=To:Subject:From:Message-Id:Date; b=k+NTL9kBY/QtrAMTjD0n8FCMtl5Ft4qCw+eyeLPTz0ABogy/IgBhHhbEuHtT89pIl/oTaWDwSDYLJdA//g4pLDbb95JimP9UKMnRI5mFzQevRY8gTl3/6QFOFkEwVLtiwQULIuyJID7cSLWE+RTBGipJ4rg5kOhSLg4CLW+DD9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sWAQYukn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sWAQYukn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDBF7C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787977833;
	bh=Xd8gH8Sy6mdbQGO6H8KBRTB58oU2x6D47ar/orWvXZI=;
	h=To:Subject:From:Date:From;
	b=sWAQYukn4WmQH2qWYISI6Gd4K+K1AaEt/04oYJn9bod6o/L/NHH5lRAoDnTrFdFrC
	 K3HwYfZdQqmgo2b8EJnLA9Uok2QlKNSyHRzsTh21GRizhbkyhmmDTgasz0XGeUv815
	 6YGRJR29QH0Rn/OzgEtiLMqCJyj7EXn1rXpES3KSepkygxQRcm57i5Bz1hplhqRHeg
	 PiioY+kEeYSl+0Yk+SQHfPIvE3VT/l3ur9Z0FFLkZGtT8MaaSa0oXkWyBUy2FrTTnx
	 3vEePsD5YchtetthkYNdLBzV/Rw7V/3eoXy/yMclEEPt8Tz2j+aSAG7VDg2j5vIjvm
	 YDXjCWtJOm0fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEC8AC61DBE
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178797783369.8248.14665066828272797510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b44339c5680a4acb1e156925b87451616913e58fa0b4b3549373bf321d22fc7e
Date: Sat, 29 Aug 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787977833
