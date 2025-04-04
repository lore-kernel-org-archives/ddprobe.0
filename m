Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4065E2629D
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743741594; cv=none; b=OgzD5JU7EOReAhrmgOn4365Ky14S7dcYWUKAUvehqEcvfNpAIWPGnjF/gc03f0lGb3SyTuu6q1jsnhOqRjOH2FD25ENPpHJ7v6jPo9J/1sfgiKc1ptnO/O6QTlSXTz6rH8SG9OBI4/F/qDwefF+CmdC0iCQXyy6LffsdzYWEQE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743741594; c=relaxed/simple;
	bh=NS0WALgOMchZRLKbFJlgaqiit/zxOQeK+2rzXRjd+RQ=;
	h=To:Subject:From:Message-Id:Date; b=GZt4WFDJXYBtyNCoKragQvwffGTjp+V/5NyJQx6n5l3RHQyMfCxuf76n2ciI3yCfICmQXmuABs8N0DnikDGP7PGDmaYkX4KyrlbhCVm5EdkLb297w5hXpzWt5ng8Ol9CsKKYkhWLYuWE6N0WWYQqiEKz+mYicwSf/IQywhqAl4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ydx2/NBR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ydx2/NBR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1FB7C4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743741593;
	bh=NS0WALgOMchZRLKbFJlgaqiit/zxOQeK+2rzXRjd+RQ=;
	h=To:Subject:From:Date:From;
	b=Ydx2/NBRR/PMdzXLCIGxAnhNerUNBxYsp30N514JxJtPTfrfx6CDaFj2DQMbRRssX
	 UG3HZZVXXQnMKFBDJ3+S2Mxagm4Xa9ksnpbBEmG7ivWajZyFR9Jo3w8oqotnogwXbi
	 MoU1yOPWn3t57C3TKhl9p76YS0PiAOoLdMIYgi/BLovRmE5XL9xXpxZ4qxPhGVzAOV
	 Fp6XuKz+Vxl4VuuZ8RHSIWjtHj+vBIwS5DIDsCgKPa+TezIJhjDHSAaMovMqxwmmHQ
	 GDoAAldJb6A7gfkE/wCiTgZ4BQzr5rHJrIjhSufMW+trIrSgUg8lGgwnmUDY2ol6jz
	 81z0VtXOM7ApA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99D5BC36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174374159361.26542.2937157624789771737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0b96f2bce3165ab43cbc3162412ff9fd0d6363d8c5087ccd923695d2889689f
Date: Fri, 04 Apr 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743741593
