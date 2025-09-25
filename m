Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 360A430170D
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758812994; cv=none; b=Sh7vV6bfnXUf90wQ7azI2t+nArl+di2NunDSczp2m+Nr6XNt6uLayKX/urCKL+j7UaIH6XhLIelRVaDescCHk3uP2Y+W6BreQkXaqAKqM46AQVMPjA5vrMvYjUn233vgfxp2jsYYv+9i1CKGCw0AB2JGOB+S/O+Ugv6eMFK1L2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758812994; c=relaxed/simple;
	bh=730qB/PcunCbCU3R9G2MNSjCcLinPAhORGxfOZY1k2Q=;
	h=To:Subject:From:Message-Id:Date; b=PvaPyrv4QvFoB1y0d7K6IW4okW/tGAwypY7M7fU/1mbfpCL3XfnTmfELYKNGoeN8zXIpIZvVbx4aYxb2c5WIrQOVR7Rumt7F20gpOcQau7/uZgiIk8yr2U7fCHmSC3rjrTgRnhh/pJtLnYsjzOXGYTjzX6qlcq6bbcJfQ/XftRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ck44+Nve; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ck44+Nve"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A00C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758812993;
	bh=730qB/PcunCbCU3R9G2MNSjCcLinPAhORGxfOZY1k2Q=;
	h=To:Subject:From:Date:From;
	b=ck44+NveOxHWQLXF7Ph6D7rCmTr8WdAoaxUy8+6VbN8qBj4OpLRrT+FYKAUxVIpIU
	 ZBAEBzWeSI6Ez5CFjnBqjq0/hUPdrQpSO0/fmsgplKXVDWW1XHeg2sLpAwPfPtKfKy
	 ibAIG6S48s7PucpaSy1NAE0qV7qb4FnnKFV7zP6QlyVvLpGrSWuEQaW6Qobri905bp
	 4qotrNdnJhbXVP6HbZk6NGn0hqdr/0jrduihTgHypgN8o28g9l78PzGG5rH5ucd2wd
	 Kn43o5QoN1XVMc7ltiMHnaWdAoapkV9Ih1aLMU4ZqEVPGGIxN7I9vEkWD0Zcp7OQuv
	 /7I/1Fx63ElSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918BCCAC5B1
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175881299358.27147.11158901609805434327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b0776b678e0e62f2ea93795db1b1545d0684408146ad5f09af010510582e552
Date: Thu, 25 Sep 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758812993
