Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EA9D70817
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 04:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736050554; cv=none; b=r5ouXlj8ZwnbzO/4JTF3GTsvaOgELSYnS5UoHSvAdhz8EG87IUSfVdgLqhWlAworsugqM45YLeLiQWEre9SlgEFR9TlUHZ9aR0L/0986zvHW3fq7oxRiZA5fDkxaBidGmv5YhvK1uNyNaK8J27lUQbAbxWf8rPh1ononp6gpimU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736050554; c=relaxed/simple;
	bh=Fod+L3Ty0ZmZ5wydADPNNJnL32btOhK0U1KKsQdpOg0=;
	h=To:Subject:From:Message-Id:Date; b=YU/Lv8utuGRp4C3lbq5jM4pMMWFh9EmbFEOomU4gMQRXb87S6QQTlVmqAxAmDb0ym6sgy4vfNhh/2ebsRXJuW5/EeRyDgjOPM28J98cQBuZtM9H8F4HrGWrCuG2SuC5rwqZXmyswSiCJ4l6dk4EWEPWPjuSYDIr0L+zj6KaPsmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g3X/Ol/n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g3X/Ol/n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9EAEC4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736050553;
	bh=Fod+L3Ty0ZmZ5wydADPNNJnL32btOhK0U1KKsQdpOg0=;
	h=To:Subject:From:Date:From;
	b=g3X/Ol/n0iQDIkQsHuR6U5Ag8QngIqIW5tgsjzcfqZHzCSCo5RN6zGC2CzU3GIlx7
	 8Q0RUx3N+RkpDCcjvSKb1+9dc1cpH6LFHGmBtNdSBXUop1mf8afoiBmFDUxVF670oq
	 n0Vms+vDCpke99borK0Qltg5VYM19wJUmp5hhs8XGSQhui/AiiAqT5wjAuhBdp+xRP
	 9JvOPY8C4opIYG4/9ptsfepHH2rRwomd9TXvEkHUbvGBBMbsLvzAwnejWYEJCqDICy
	 egpL7W2M9IJd2Ig6N4hGptbR0UP+0jnMnl7WdbPgRcBcKQF9hk92JAeNqM0dt640zc
	 zzNt/PBK8de5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE440E77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173605055369.9077.13619656652208212787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18773bbfb67e199072187647ec63aa3cffabe450cb2a2974e9b1cec6a622107c
Date: Sun, 05 Jan 2025 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736050553
