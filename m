Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDF6453B4
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 00:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84028C433F0
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 00:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671667287;
	bh=X1w96vdl/GuDPeuH2jYx/VqpCUGUBwGmHq/zJYXNo7g=;
	h=To:Subject:From:Date:From;
	b=o6m9dYR/WmQBwbnlbMCniDF5CL9wQlzXjZOfJFuA4RwNjvh8jdcaoyj1zumzuHYa2
	 kbclcmEEHgDbEI2POfYNJz1sdMMQLvYTxa55Zi0goL+vSN9tffY+WPACaPiTpVg18q
	 iGzBZNR0MABGkF1KnFZ6H26yL4wm6Ll5DLcoEdASPM8RpUr0LfI8UUlV3ze+A+Khyy
	 fz3clTDFv2gzerM9ink/pkexZX4M7U7KdaamsrZ9rxcZ5VkHernnzRCP2NltNPLddT
	 hqDuqTyMRQWoUqAtrEo3RORDdeDMtmSYfHB0LHvuqwegPelc3HXTosryjIL0sTd5zx
	 J9tXGRlPpvlgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AFF6C10F1B
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 00:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167166728742.26653.17871208612266879027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 701630c80a628331dbca74e91948c6d167e4c3c1f1648ccf7704326c4a76db36
Date: Thu, 22 Dec 2022 00:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671667287
