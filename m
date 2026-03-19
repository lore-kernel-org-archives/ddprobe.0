Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3406F3CE4BC
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 12:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773922494; cv=none; b=RZubxdgUrGFRY8E8sGuSlgtjq0lPuRWyCF8Gn0WcQoegk38D/bLPhZcWmv4kELIPo0Lp0uCuIECbxn/UMKrP1DeQCG3oXsqxkegs9o05wQnQ/k17eMyEYsGaqQM76t7L1MpD6oDqdPksup4D4w7LtxkbtTPc6A/CaFNZkcV1fQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773922494; c=relaxed/simple;
	bh=LmYKLMJEAqw2Bk0ZMXw7FMABbkcFTJ+94B3bJfNGgxk=;
	h=To:Subject:From:Message-Id:Date; b=n3eU4rGCsjSdNNizYDmJ/gJy8RYdTi6O35w+vLmqf6wEv7RwVA4diiN2W0a0zqIH12ZWOJlkfwvNnmjxbziVjQPbLhy63wNNUaOFmpJFG7tn31svq6w4SJ55m6NvmxAwbrA5Zil5aNI94IJ3Y5dnyPpschX1QYilb1dehJyiMkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DQoyJg/g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DQoyJg/g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C97C2BCB2
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 12:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773922493;
	bh=LmYKLMJEAqw2Bk0ZMXw7FMABbkcFTJ+94B3bJfNGgxk=;
	h=To:Subject:From:Date:From;
	b=DQoyJg/gW7wcrGm9QiawY6mAkVkQ1vxFlCiAArw0YktkwV7uyICsJvN39E89VyH1e
	 TLEiLpzM1L9IhX10T0L/2zDcv6bRmlJ8VVsGPBQoJTVL8bWK5kiKwO/pn6X+hW8IlS
	 4+TQuKI0shR06/SjtgVVA1oL+18HjSAxUZcAGy0D3bQzblfOJt+hzsFNnRgQRMrvXr
	 UqLLKZEEyvWurfrISaWT/rtux1vXW2g9DvTIsxqcMiRiYObgeffvytxf7zkFBJhDCF
	 PxP+yzjmBxOekLjSgxuocmWm6daliP/XUVqY7uJghhz/PpVbN00nv7PwzDjVraoHP2
	 P2mDYauP+q/BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C36107529F
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 12:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177392249359.19247.14399196680008955395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ded555eb16c06ff8c5a12d005037f26b495994611793c45481001efbed6b06d
Date: Thu, 19 Mar 2026 12:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773922493
