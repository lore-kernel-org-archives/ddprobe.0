Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE3827C
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 18:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72601C433C1
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 18:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663698653;
	bh=w3PBUJtCtIZf82XhJ5ccMoYpt15ISJi5CY/i4BId6S4=;
	h=To:Subject:From:Date:From;
	b=tNA2ZTX5WnhkcURg1nvJFenyAYtH4SW1Yyx9NiF3uIPouWPzCSL8z38Q1v/gLxsWk
	 u5QFvay+DAgniUQMSKrB1pa9+np96CRQD7v1WnEqjn4AI1onlVJgo+2b2zPebHbRhA
	 mDPg/0kVhwe/+RwtIm9mkeqdz3MR1LFmQFDc8UTeN9Oqdu0OYgQSpphhNys/36Sj43
	 v4orfk1gber3lPyCOjLBEL01fhtfgA51UAfpTSnx4HamxVLY7Cp3b7D7g7oau9ZKmB
	 IBvOKlYkEcGwM+HTNKcPjf+czsbqi8f6GS7YSx70qW/FOAJKxJvfUYSKJwpinVfX82
	 KVuND/YhEVgYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B111C54EE9
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 18:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166369865336.2817.7824682269864281663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5cc09bf213b3d8daa3e979b77757ea050fa32d200a2c3272d6c751f9c653b6f
Date: Tue, 20 Sep 2022 18:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663698653
