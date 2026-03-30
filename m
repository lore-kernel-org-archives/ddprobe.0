Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E60D533B97B
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 17:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774890894; cv=none; b=OgAV2KhmKek1Rdv2toyZ3rBPPMse2jAhKXyrFOx9lEjKr92hb2P206jpykjO5msu1eicYdudnN/kzRYzTjwgp6ry8ltiLWJeuk8cPrPaRZkYBZxJ9fge4MODO0VSbPkNV/cH9oDdI3A2xjAI93KETRIvstqB+3q5hxqHYpj6+Aw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774890894; c=relaxed/simple;
	bh=RcBnQvve0wgbc+D+0Tr+viB1b27kGSnfL8WhuMTZhqo=;
	h=To:Subject:From:Message-Id:Date; b=iiup1QyIzcR1jprOokswtGfNaoACuaozIvkTmwaW+7bVePnAvExWUCkbJ2kavWCGdLZbFy6zUSlaDgXcitvZJGS1ap748MHU8m6r14Mm2KDEE2rsDlrFCFe0W522YbEQjgeaqvh0jNxAz1Lp4hexH7fEYOi3Vh2U7rR2if+FWTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aNj2d6AM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aNj2d6AM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A92A8C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 17:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774890893;
	bh=RcBnQvve0wgbc+D+0Tr+viB1b27kGSnfL8WhuMTZhqo=;
	h=To:Subject:From:Date:From;
	b=aNj2d6AM7G1tNNNZHZDi/2kAv57zR+BsRrLpuVA+qrcGK3aeW/2PrSq9jxsVGeIUQ
	 VgT4OFj87Jit2LL/f/dp5SX7GqF6mwyfIWHfVVjfyO1l/+2HBdlgcEYTM6KglKQ1vn
	 mm6V6qrbXxrUSbw/qRPSvuZ4V/H+DFSVU3trtS9K6VBQaTgvkH0mQzSEYP7/e692Xj
	 4rV+E5npEwbOEJxAzHPAORZl7dk5/A+l0lk5jLKVY7GG2oCflU1oLhUTD7lNGdaFUl
	 wXKctWjQbdu2QQkRAuZHOl6ATkiGrvXr0UGqdx/9fGdqZSsGbYDYJpucJ9Hgpgkh0W
	 hO1g1YJ4DrasQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D011061B18
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 17:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177489089360.14936.3875056164628059902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81abd9c5250a29020a2c25e150f78884e4c28b86a827fd3375992e279caac394
Date: Mon, 30 Mar 2026 17:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774890893
