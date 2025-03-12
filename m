Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A1181EE03C
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 21:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741815534; cv=none; b=GxAAduoxNLVd8ZvX+HolfaZbpPqHyKiRR7c9TIXgvCW3Gs4yil2q32urF0h6XkGYOogdqRWb05eQ7l5oLktDYIAH7oS/VOK4LtSrhHUakbaHpxe8xKzy/BHwpwB7TiH8EcR28QW/Ah8nyr7//AsuOwDtpD8ipKfBQY/Qv9cQqfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741815534; c=relaxed/simple;
	bh=QhcO1WQdwd/3+E/1X+ySxXtuk7/289A7yFicS/ZX1JU=;
	h=To:Subject:From:Message-Id:Date; b=qhjUGRI+eMFD/+4scZVglJntGB78t+KpoV/x4AWkjyWt5wBzsG5yUOFdP33RpidWaxmseHRCI1Xp5S53q3UGQHRxnTd/3LhKv1rIinDnQozMTFgAlWU0aIB8ewFGwwVoeTAbl9fZjBsy2iiEL2+HwYCNS3MgxvidTdWqS28YLY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d13pF5zd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d13pF5zd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B34CEC4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 21:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741815533;
	bh=QhcO1WQdwd/3+E/1X+ySxXtuk7/289A7yFicS/ZX1JU=;
	h=To:Subject:From:Date:From;
	b=d13pF5zdwXCBqncUtS/o2drmeitReOIhyNILfuBQrR0qB7wMAhDLZao3B46z+k9T6
	 O21ORV+KrCr/K/RKokNU0qLDpemueQRmFNR5nL4FjjAD3GGIqlGxdIoP1iiQNmRgGb
	 XIKwBDjr8iQ+c0j65X2ndSQeMohVUg/CsR5vcJn90oSUuVK+Zp1DL/PDfD/GlNWS9i
	 vPBT+GD9Ahv1MO23OBZSY4Q4qiWFWrZSsjfsmQqD4ww+EjBMtDi5b2cw5egNLi4aaH
	 031sjajW5epk3EdrRsHc+H/P4/mRkg3RdwsYu60OgT6c39hDZLNASDMnx16gA62F/S
	 /uoYlk9jbI60w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C704C28B28
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 21:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174181553362.4612.2662029812818704001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd77ffa44d418416845c2f14fb8f634c816627f3884c86a1a01ec755105bc244
Date: Wed, 12 Mar 2025 21:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741815533
