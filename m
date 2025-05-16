Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 308C2227E8E
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747379994; cv=none; b=KlBWoQjUJO3VMjcz3Pj8fL7TdJhbOKvlP6Gb/YUCKzA4OyDrzXZHqU9AzJAHe6wz6cNKe4Dh+v+1WsSeE+QFQ1hw5QWGWXeoHqXkL7f1K8g4HmcYnYrouSl/PAcxEmDYmP5xd/+H9lJl+/gPdbOznXqz5UuvLKqIqEeWRZItfoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747379994; c=relaxed/simple;
	bh=/kP53/57en9mZ2mnmoX7y2K9RBupUJcEk5PAWR6C1gI=;
	h=To:Subject:From:Message-Id:Date; b=Kfnyu6zM/jGTGph29ILhodd7ucDQrOYJEjubsn9b111oN3Wx8FOcj+IJe/WR+s9sZ0jE3XXjN9ZKX0UAh6D+zvyLd3sVz0y6puytjcv3HBJGrmH1mCrFUEeZJKakzmmRvHx5vvYjqrCZyiwRVDd1a4f+zRz3558sLITU/bSvM08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kM8Qho13; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kM8Qho13"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A21C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747379993;
	bh=/kP53/57en9mZ2mnmoX7y2K9RBupUJcEk5PAWR6C1gI=;
	h=To:Subject:From:Date:From;
	b=kM8Qho13WbYjA8CURto+AHiomUHmK1yKBjxXOBgOM4TKkzqbRgcaNOW9IzFpjySEd
	 MbkXTOuDa3UbsToqmxEcsIaOgtrwHdZly8leiCYgYQAZA6X5CgcXykeqnFAdawG2YO
	 3RH0Vvcrx1UTS1w/ERWnHBygN2pUDHKfvIM2NzuC2Tdtr8w4nLdxwEZfCuGes6ert3
	 9R0xaYsOkkrr9CocqwHL9GhANx+hdgkvJtouq/NajudJH5ufV8tsXv0OotWo+wikQs
	 D4Xke0wJzKR0PlCrbkB+yhX3m6A4B228wg/birE8oZnGjw3cKQnWVBP1CtaHYqLBDt
	 YVTsOQipXa9dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9310DC3ABD8
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174737999359.5247.562893869567875101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b4940a1f7c2fa95e949003fdb064b11de716aa58ef3d161170b3362dcf3a939
Date: Fri, 16 May 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747379993
