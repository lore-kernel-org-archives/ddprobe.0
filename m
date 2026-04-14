Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 351222D7393
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 17:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776188854; cv=none; b=WL4MieC50+Sf2HrON8NtnjYfjQVOyU/8IVqvyPKR5n1DgR4+f+8RR7ev6SG/WMBUC8YN+qmQ5tt7DG3IKlKV3XKE31Sg7t2Ad2yi5voZHVhYOmYE/MEacvURGO9Di4nqzkM4LacNnQXJrwNdnCqBVxE/oDkJIKCEmRiwLMtmPLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776188854; c=relaxed/simple;
	bh=Q+GGe1evRj9nHMTGkwcALrVgDgZUA0VkOIAWXzg8Mf0=;
	h=To:Subject:From:Message-Id:Date; b=sZqxFR7yLhma92AoXUceKe2woGqJUBr6PyU/wbUQvW7blIVY1+IZWk2cnsXy8a2YJ5ztu7o51H5TU2/nKj+vJDSdw/LUGoVvrGM1wgZvRTUNkMOATCDN5w9GIp8W7D9zSfGzbOxqIW+pFCEiS0BNdCNqlyEm8fpoqaN2CD9cNg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TOdzbi0c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TOdzbi0c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE9FAC19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 17:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776188853;
	bh=Q+GGe1evRj9nHMTGkwcALrVgDgZUA0VkOIAWXzg8Mf0=;
	h=To:Subject:From:Date:From;
	b=TOdzbi0cYCZLDW7pfUFZCvqRT/l1k6anQcz8IaeYhMTXWqJXHH3qy9u9CTjoK5k0U
	 R07ZL4ORrvzKromQk0U3UpmTJPXJHyPOJ0ti7jMIpnDofj4wKb2PNuipJ1oo40rQ6e
	 jcAMuflsdC9wkfqm48m/z42nHw0XVx/MVsnEBLDjWTyO0HJIlwYc5Of/2EXkb3dHuy
	 LMkXJ+6uzlLxlZvWUya2DRraUwQs0RH1CulMfQHlwdxYPy3vMxjqU/fia90ArESSWt
	 dnT2Tmw3SMUsNnYyzQvEK8nymZsqRF39gBll/eczlAwfNFc9vROZ2NaMamToESE+9k
	 6HbzuJ1LQOJNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB75BF9D0EB
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 17:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177618885369.32280.12244328740218478896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6b3fc75957acbdb94def746ead31e4b3e840efde197d57255b700c00d04dd5a
Date: Tue, 14 Apr 2026 17:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776188853
