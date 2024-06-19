Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D0851876
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 19:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718826563; cv=none; b=uJUlN7JvHDilE5lCg787wp5Au9QALKnrE3NLW7mzACTuQiQMGNRUlf7uubNPq6dwRF/0Fc/YVsIdCCw8NxU0qoP88ZeJ9hVBum2VxfPP0J8i34PFICtfqcZYrVYU75LB1uC/P8yUEuuQiH7190VzV/JzGg3WpOj3zKFVgfMsE4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718826563; c=relaxed/simple;
	bh=4RtBUqsbwtJtSLiiFHQ5z0IpPkn62+3V/RYoGjlqD8o=;
	h=To:Subject:From:Message-Id:Date; b=kfqlUEh8Ve3CN34KAz1WA180hIDeSAyG/1dOuLiheDYplqPpRFsHnS/+CdWWg2i6FUraNtzIn+MMXDYFB8rEwEW/HugU/cDCLuacz4KRstMGAH0eKdL9oWrg/QvIgFZFh9pwOYrAZtEt8A6XaLJ/Geur/pbLUpiYjcZ9aam6Yrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=enjpK00U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="enjpK00U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 00B67C2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 19:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718826563;
	bh=4RtBUqsbwtJtSLiiFHQ5z0IpPkn62+3V/RYoGjlqD8o=;
	h=To:Subject:From:Date:From;
	b=enjpK00U/ijdywXIWXIjyI71YOqkHLOgMmjbkr2mbDxEZemA+re4tbReNGwucQdVb
	 JnpO69IzmTpVTfXeyl7L7XW5yh/ahR4deakgzlyUFrCyvcNKOhAi5gJHpA4j68dibQ
	 WgEI5+xslH+xixFbd7pPd7m/8mNIz9E5Y+0lA0vDlvXsOYza54i2uhUoZMhD+jYnaw
	 soTXOVAm1IdaipGCjbv4lGs38ayf8eDoExEl0WcNrUt2Mp5oeE1qJ9qOxltok6cG6l
	 EawYdQXSlmrfUKXK8Wy1yh+xK8fFyM5Ya37qkUocprTwunolkQ6W7/H4KEPkDrHV7z
	 hRtVxnz6vg0JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D48E4C27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 19:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171882656280.6542.7363940506143141088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2a02d68ffb942db129024c9f1fffcd47e000a0044eef66806e15224edb8aef3
Date: Wed, 19 Jun 2024 19:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718826562
