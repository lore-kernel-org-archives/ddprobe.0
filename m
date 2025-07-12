Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C7B58F5B
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752304794; cv=none; b=DU4SNT+JFWMHGhEgLGGaARYPZhU17cP5ENDskB7ActpXU6lLEF0K5VWp4x1x5Bsf9o8nW6WxgBlx75ElRuGElWLcQcDMKHUuD+RKfDi9I6c87klaJKPzCU9U3hJqnEbaWSykc07wO9YnpIvxOM7aCF6UkytCoIV6Ptj23mnmwsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752304794; c=relaxed/simple;
	bh=pn6UES+uxVG2aNlNLjYf9/GzkbsEuwiNZp5s9oARTQU=;
	h=To:Subject:From:Message-Id:Date; b=TUu9OorY2V45aSaxxz4/Q6yRQU4EwbpnQs9CmwebIIgk8Yf2R0abCYwLd0fcs6EpQxOnTmzF0BemUKOhY22fIIVDhlMGK/RDU3oayAld48f8ZCsMJqbsdN9dhQYS8HMAa+Ig7d5eAuIlAveyrI7UYzP6L/ZohoIy2piI8u5yrr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XfXmIj+4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XfXmIj+4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5786C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752304793;
	bh=pn6UES+uxVG2aNlNLjYf9/GzkbsEuwiNZp5s9oARTQU=;
	h=To:Subject:From:Date:From;
	b=XfXmIj+4zsWjFYI2pMS0UVBFIzAR24tExARrm4H5W7DFc8DFe533WtPP6drS0upiX
	 TSxyWF8Q85vURu5hcngGHW3xtBCBtlpgRnhgAv0nwQpYORDqBYduVjQla04XN+pvu2
	 mleJO/YOjbdBCTHV2Q4Mtqn8bqbHExk/hUtFiM1/pc5Bd2Ob/ytx5pj/V9s+BQrapn
	 Z1/btMBw7Nz5Z9UzJT2NGuJOMFy/j6+VDS8cfs8JM+9LmhRCvQT1HvMxCFk/4XaM1n
	 2eeaA7QapgJRCekIjcEDnLRRZwaEOn2sjdWW7NtWBEK9dCUs0Dqu4McaSei3YOPe9d
	 huQAYSsLQloTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FA7C83F10
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175230479357.8253.18290358235633354868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 083d3bab52fcb08fe2d29154eae85410e1328c308fa7918956bb2ee91ac1c176
Date: Sat, 12 Jul 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752304793
