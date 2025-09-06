Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BDF5284889
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757186994; cv=none; b=HzMF3GZiN5ydDv/1TPkS7wHKQnX8+ZqOSq2XyZzo+nHlB2vz17MXJ+/+mh6aChkoU8QJx7D87swRO5qCCN04raa5ggNSflXEKitd2ry/foa+DpdCTu64yYlYwYFqWMG/UIoVeERzparngOozB1mxglpkURAPkpoy50sGr6K3tOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757186994; c=relaxed/simple;
	bh=y2KHeLew0kf1nbLhVJZF5AMAXUop/M+Jn/IUGS7TL8Y=;
	h=To:Subject:From:Message-Id:Date; b=MDehfviMPHuWXzFEsns5Cqa9n4mEXgV5H7c+XFlG3Z2zedPbgUGWO+dmY68znwvH4lH8K7CEtJKzr4uAeHv2mogfqmjYcM4ZS6i5SfOFcWK4HpAOYGihM7yajC7OIrfaL94v/T3p21iwOcARfXs1bBJJXfLQ1cbhJjNhwpu+Ln4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ks/waKe3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ks/waKe3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D331C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757186993;
	bh=y2KHeLew0kf1nbLhVJZF5AMAXUop/M+Jn/IUGS7TL8Y=;
	h=To:Subject:From:Date:From;
	b=Ks/waKe3DuB+X8AqR/h29J8CB8Wm8TKzfWIaFjRptoN8Kko33+tV9qfbdhRTKcwUi
	 FWb8H7pDZ5xPJdoI0pb/bDcA/AmuIypf6SNRNIZhyQ/jV3T5TUeM4SCBHr65+7NolR
	 sttRA6IU9CZ67GDZWymVFvsZwyYLV7/38p2NyoRDe5DriP6Af4ebqAtwfPUfmfQJUc
	 ZB9SiyjOHAWE01zPvP3yWXZAja94sstfgvySsQRZgJJR3uxCYHL2NzUrEUXhLEOgdG
	 zkxDdgge2gLe7wn3EznPf8ktPFCbY4Frpn/J0Jew0g/gal/X6vS65XBNyi2n8Jwi9j
	 IafpI1j9ypTRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE8BCA1012
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175718699357.5887.6422700269101820283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 253978be71807e2e8777d816cec252193ca5489cdc025507a8287b16933ce26b
Date: Sat, 06 Sep 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757186993
