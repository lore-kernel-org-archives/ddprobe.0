Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B0F51DC1AB
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 21:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775682934; cv=none; b=jPBN63WkHNTxoOKmRLaVBayQ2XF3a8P8HqxsK5qifK661qLWJr82Zuv7L460afD8SAwWXl8FfcAV9hsQ04320Pp1S4ZKuZXxp8mfFRrhYgyiigPRZfyx3VQhPXHk0D5bLkJOkox2lJryQe4MgAzYHqALTH7DsWTE1vvCUQiKLHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775682934; c=relaxed/simple;
	bh=IowxEt8heDtk0+iwNE0a+GCTCcmhY/OC1f8TE1VYAxY=;
	h=To:Subject:From:Message-Id:Date; b=UvQvW0TrxIOpSzK00Q8Ra6Xtpbq+AwBI3w6afclpvUjSUwjezYDAWWG/Vtbm7/cgCYqIwYbO9UPDPej47CCfhlfe5rPar11hpOtDqxcv+0VR1NaUOpPiTdxZUdJ7c7MUF9o5zGmHjPIIJsf9NmsH/MkNW83NyivN+E2Fge/HxM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RDKP4v4b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RDKP4v4b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFE9DC19421
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 21:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775682933;
	bh=IowxEt8heDtk0+iwNE0a+GCTCcmhY/OC1f8TE1VYAxY=;
	h=To:Subject:From:Date:From;
	b=RDKP4v4buTv3QJ0pVeIlA9SrUIHYEc1c+tVKTVYCJlDFiOgeKzBIbrqx5gTJ1J5of
	 wVAmXXI6OvTCkQ+8k5/mIpyiwugdtgEOPgCJDeyICo8GMrgIK3//4GskzwOKFZlORx
	 TTo0px3rdOQzB7c1cltp8/y5D61Pc8/eHeZJ9Y/qxeoj2zaj84ip8D4tSpEA7NAIe+
	 lM2Ux4hnrMR1RpXIAlBnDhKIqpJsmvQ/aUEoqqBX4tdwyzmjq/zPxQDGCFJn0+iTvv
	 YqzIF5F/XCeAvO7F1gW1ALv/o3F7kYQosd+BJ8BmDguOkqRShmj6mrAj2GEy6nN/k3
	 mF6thJev8pCBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB94210FC440
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 21:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177568293369.6676.1200955842540940184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a914acb6a5f434e8ee2556ae0809a62bbda29016cdf8dec7e88cbb072614818e
Date: Wed, 08 Apr 2026 21:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775682933
