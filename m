Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E75B763D9
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 14:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 932F5C433EF
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 14:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673013687;
	bh=/T/xf+mP9AjlTczvlk6KrU3jeF9NGs4JjoaBem9qHeM=;
	h=To:Subject:From:Date:From;
	b=mLd62Ky3M2E24aODgNNHuCj5s7h6NhJjhH/FSGTCT1FMlc+gceFNCW6uankq89B2V
	 JV1aOvuuCsJ8lqVPVHVDLMT2knAW5Ht5tJs8KeNZKt7o3pMLEuhFgBgds/M/0e3RB5
	 281EOPcOWHCbG7YZlq9HjoszK7/+GRmDH5uFJiXuqUJ933mH51I9wRURSxjT44VRPX
	 7V8SN15X3Xdyglf7jrVZlvVm9/43t6Bo/3BoLgya9sihaGYsBps2XK24z4O+VoP40Y
	 tbcxdmMSdoYSTGVfOR4N8MNVyezGOoDfglL100bMeRfmnYXRsFqfYPLsaSs1GZv4wh
	 9MEc7eUY6aMKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77B5AC3DA7A
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 14:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167301368747.18592.8810759918288284100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57d074d33f6ab2f2a7bc422f79cc84cd4a33284a8529c65abbc2fa8aefec9e24
Date: Fri, 06 Jan 2023 14:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673013687
