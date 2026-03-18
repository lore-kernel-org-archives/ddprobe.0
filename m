Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31B8D221F39
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 02:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773801294; cv=none; b=pmYLuYWvcXMF5EgMYQOL+2L+Eks3HnPx0vfyOurRnZB3ad4XGyWjSC6+Ap0PXvTL4CBWx5kFv70nh6gwgQcbnVEcbDrBgNO8V1hZJJOPuWVwo6k4dhANi8Dl2khvK6XbAOBkGBg1iotXWu0kSoXuJpRa7S4HnqWKE5FgYNDZvjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773801294; c=relaxed/simple;
	bh=2juksiZCXtIM0QGVEeItSh1/qhoxgAiuicE98S8GGK0=;
	h=To:Subject:From:Message-Id:Date; b=uv9SnFPGRTU2oWFVBT++KTsuscHj3Y5GnQ9CtMA5Rx4jtCDjXqOp2hPBS8V20eAbtOFlKq+WVN6nzjn0G2u0jBovfpXX83g3dkvIINfIdZzZN50Mal0JZpla8eJ2JMR1rrZwx3iKgvh88stuC9dFlK9WYv8YqQF7fuTpn4PxvhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P0ytn5p6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P0ytn5p6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5AABC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 02:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773801293;
	bh=2juksiZCXtIM0QGVEeItSh1/qhoxgAiuicE98S8GGK0=;
	h=To:Subject:From:Date:From;
	b=P0ytn5p6BwrfQGzaHzIOb6ywiFguZ6ArzXp5TZ5MlgWJnZiuTiOilPhqdA7hIg70u
	 x4N4n0NKFS4ybUU+ClK9mwni7pnSr1uUiVjnx0mo4Yc61Y0PpODv8HcXBlyCPkqMqy
	 K3K0ahMJY6oylh+um0FBQEAN7KQclDxW6Oe2VgNSsgv7LGY0XLdP1944oPjVubhoKO
	 3QCDhgcIw04XmS5ZUAWYv8zKyKHS0Gw8E7pcEF9qEbSX73gaI0J70aqAESVW27Buuk
	 R27OnyCaTlRyWI0f32A6NVZQCMYyV4TmfwIVbazJSB3UMqM9iAC5Mp0JEAzioz6FJm
	 qSMPhlbrWNlUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946E710854CE
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 02:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177380129357.6377.17729129269131701446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0bb76f0c5f7316055667ffcc1f978ff1960c1399167bfb0deeddaffb7fc0132
Date: Wed, 18 Mar 2026 02:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773801293
