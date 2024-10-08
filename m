Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11AD3EC4
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728350754; cv=none; b=ix53BAG29isZXhwEwNQUMZqpQiW5R2dSdAA+tq3yHtHQTL5SVSgpLnWAxCOHvAJbWwyircQ5UJ3PbmMdXUpx/S2N5sAX8s41A5abXYxdMxWyB2rOZuv7qy17LJIfbxl1+gHSa8onRr621t6qPYmY9qWh46+a0dVT/9miql6WZv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728350754; c=relaxed/simple;
	bh=ZbBh2LTA8zDvLMM0P1vihYO57ybxQy+ShkV1lz42cLQ=;
	h=To:Subject:From:Message-Id:Date; b=LjgvldbmqZ/5/XOkdB45OVMoHNgmPUh1xNi7ohFvTrtZteiWAvX7ai+v1x8RL/2C2U3bGpQ2/wfizi8qD0OFaaOJ4vtFPjUWjmLNs+bqJ7LGdLqMOwsdOrW4EJ/Ax3ImNW5O0U7wfwiFgJYgg64Qt7Nw/hwzOZln4OZjJIsFmoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p9DqZ9z6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p9DqZ9z6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4159C4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728350753;
	bh=ZbBh2LTA8zDvLMM0P1vihYO57ybxQy+ShkV1lz42cLQ=;
	h=To:Subject:From:Date:From;
	b=p9DqZ9z61iOcxrMlBpUL7N40s6ZI9E8J9/5I5kG3vY+AYkxTxPTBFQX4uK4gtdmDp
	 HliwKz2a/mN1zjvCBdXUjHKrmyQ15GYjUjloXx3KMcr15veZANGb9SGqSquY4ZPt1J
	 Pv7cdhzs4MGaXERHpdcyt1+2p/yXzWArLSLxw2SfxOYhAGonJeOHbt3bDCqd94Mdxy
	 /cQ6edNzWpOMvSnnQrH3pbbKiA2/ZRmh6svII+GhssxZnb6Ip92Vu1xtvTZ1/yAzcZ
	 rzgs0/3NJLq+pjcPwHELfBHUH6Za4VVcilXOZYAv8MjNWvgEttnYzIJgpmUaH4PljF
	 J9XKWAfrVezGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A347DCED24F
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172835075365.2142.7617718396464326648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c55c082ba273e162f1923558ba57baf603cf8894d54c27ed30407ef00fe88b0b
Date: Tue, 08 Oct 2024 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728350753
