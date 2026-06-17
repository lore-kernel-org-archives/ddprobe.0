Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DCEC307AC7
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 21:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781732794; cv=none; b=PvfRftiU/9U7Ca6o9WXyFNxMOT4XVcleF+hpl6PHW9c0L7wPPREqWKLkC3U1BbkduwpjlNGWbIbtslpFuNKcSHKPx7Ns81ZSERIC2acGwdsuuF7uspMYkjqIvVefGua7saXw/135ptve2bUtxaTJMCe3Q2s8g67L8FQWFu4bYvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781732794; c=relaxed/simple;
	bh=80MxJoZJNaZFjhVgIjksqa7H36BLqdl+/qy/GY0fc+M=;
	h=To:Subject:From:Message-Id:Date; b=KNNPXakw/7EorqeObUMxtkv0HjrEt+ZvNnPMpMyRpWU6D5FhbzFcHn3aSDSumxMeHYcM2E4JxFTZYMLtOSaf09PrgCAbZCJJmEmzC91TZ2lClDsHaL1bSmEan1Cl8fy6TK6NypKf7j4JIF4Bz5sOrcGiewvuK4Gr1Is5E3k8Dig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a8nBCLgT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a8nBCLgT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0662C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 21:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781732793;
	bh=80MxJoZJNaZFjhVgIjksqa7H36BLqdl+/qy/GY0fc+M=;
	h=To:Subject:From:Date:From;
	b=a8nBCLgTfsKfYmEruqyhLtLw+cEPSvMRk2B83WZBYLd55ZfagZboUmS4VHJeyYo5i
	 qE5eiRv6P5vPKeBXMOCgdUQ0bhJOGG4VilQjsvN/ze3KdlAPW/Hki+iIH8nX6JHXwv
	 5SVlXjUT5gs1CPUq4yc7un2dz1z0ScZtGHb6CgpGugCFAnBclH5QCXL1Lb3x2b+qQQ
	 BKu1pG4a9rfoUPQg+U3np60IMItBJuY0Fj0IVHDcf9zid7at9IOh8Gi5hnZ9o1t9GL
	 H/6zXGDZtfwJJJl0XwCbRbSCeCcJXzfjdeB69z0lq9Eh0Mp/VGO9rWY7q3Qvp3XWhV
	 wP5sAG8iymN9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD6E4CD98E4
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 21:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178173279372.29874.9064857051329666367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6bb0a0ededa3bc3ab7a2af52003ea08e3e0cf6bc0895a367851285c2f7b6ac7
Date: Wed, 17 Jun 2026 21:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781732793
