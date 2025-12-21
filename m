Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37B5E3016F1
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 17:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766337234; cv=none; b=qZ2NCTxRLEtZsWwyc/PW6vCmEI1DZhXKqPDCy7/89271HwS5XCX8E6z7Q4VxKkvUzAVDwl/6b/pTbPWuGAvXcWdH0slS26BtI1MqQsROVcs4w0uZmp6j0sBzJfQ4ULr1U3I4CLeXn+ok4Sp8UvLQbAIKkRSOYdZc7vzNFprOUhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766337234; c=relaxed/simple;
	bh=stQO71qAXYkPdpqI1oWNVU+yakjWvSRijpRCfiSD40k=;
	h=To:Subject:From:Message-Id:Date; b=U1koLyl/kR8DDMlyfMp6IGEdQApFanASRI4XHm6FX3HKyAE8J/49HDhgzUrr/92UCt0rwFWTEk4oT05FEQTtECIT/OKy3HCCoaJ4bHtwdJzK0tbc5CrUmWvBnbJrbd7kxjCwHhV3cV52wnKGVs9iiVQFYcwM08bb9X0NJa4VpE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IFzY7MbJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IFzY7MbJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA82FC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 17:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766337233;
	bh=stQO71qAXYkPdpqI1oWNVU+yakjWvSRijpRCfiSD40k=;
	h=To:Subject:From:Date:From;
	b=IFzY7MbJJLl4d5mVuBkTsj2/vm10+9O975aU7lIDqClxLgTD1mUfWK7+6i5X9qhI/
	 9K2M/bAPSgjcdTXU40/z3INrLd6dzViv3Zp0lpG7R0ANIuSLqPPpWZStCLwstmVpyY
	 N5NWOpSnXN6Y+eTa+FS2em5S/XtNkWwxLMxlwukcNkvexCUFayyqxRTtMqobhV+MG+
	 7CBEAmMmxN6cZKOJaM2Wq1YSDbtqsyBWcGdRpA79A6IjUwikrLptN01lfATsGjHZc+
	 LHZizZm4HL1/ksxiqm3HIpgFwCKMO1BtJPHAkQfqE9YlN1qean+O8bKNLm9eweqtF3
	 O+/WgaFQlp3Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9783CE67482
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 17:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176633723358.27445.5473376316855279253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1ff76779d406702c72036301acbbd7ee7aa2bada417d84b3ca9e531036d52ba
Date: Sun, 21 Dec 2025 17:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766337233
