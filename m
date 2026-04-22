Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 136BA3DB626
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 13:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776864454; cv=none; b=cHAn3YmFGN+okZKatzjGVsTeLa2I2b3xuG0ZGwpxgS1kLuSeFF/IoIgvTzn0a7cG9V2jfE5gcqDzMwBDNgDY6VEzF8cHLDanh99ulq05+AtfKv4H+r3qqmsTkpSyhLHy3GVfUtHHzkDe81U3MQGZIA1M4t9nFqN49u4l4uOCAe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776864454; c=relaxed/simple;
	bh=OhzV5maKDUYGHA0F3e6hdM+W4r7hMyB+2UU5XB7/sBE=;
	h=To:Subject:From:Message-Id:Date; b=uiVdO/uOiApukDhTR2Cbtxfjin4po/9BFafaFH+iOmyd9RmmqleAVODBnX5plg9SeL6l66LflGStJ2t+Hr9sbbbQ2I5xVozvmYSYd77jEbOcNXc4SPMtE/5NN0Q+KINF/rER2BlVuiLmE0FQZ2Lfaa/dI9FzrTjbF3aRs7R+gbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O+sEIbQY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O+sEIbQY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7DF5C2BCAF
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 13:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776864453;
	bh=OhzV5maKDUYGHA0F3e6hdM+W4r7hMyB+2UU5XB7/sBE=;
	h=To:Subject:From:Date:From;
	b=O+sEIbQYdBe7odCmKvW6F95IVpCeb4fSOTfrx4zSWzWgd11/laCWnDPGxfW9uU8Gj
	 jFOlRPLJbuoS49VeRBRF0VR+3bZVUi/IIGs4qEFbJFoT7G8rBy7VqLA+gf8KsuxUJt
	 k9k1J2JU/Dzo1Fe3G8KWCLKd8zWUgdY+odGt8aPWSjHdUb92E3VxtNZxvsWI/L+a8I
	 rxxLQrrN1UfcGZnBGwP2ErbEGMOBedLePcgwAeVrDczjTaj0rDjLjWuvlZ1Qyo0asI
	 VhnpHW+l4zGGHvpq8hotY3mRfoiFRJP/WdFZHcZFtQuyISfMjnr1fEKha2XPSbWY+s
	 T/ShmkE2xSSHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9872F9EDCD
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 13:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177686445368.17524.15325689269006900281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f32a9dc1e8dc9e428dc0807d47fc909518ddf1cf5e9a2e30c59875d1c4eee3c0
Date: Wed, 22 Apr 2026 13:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776864453
