Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36B6B28E3F
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735812354; cv=none; b=k4Bz2S1/0XxCD5yIfW9LRPLUNGyrLc7GhF75Jpv54Ti4kF0lhWJzE+fbT1K/6uVuhQ1rtmdsO7uBhOHSpDdcRt+m/Ela1SzGOzLyt99R+u30jTTFGazWWzuDp3wUVN8fzp0HonpNihPIUqmvSX6queNLt2bed8Vzu+Bb9F192ts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735812354; c=relaxed/simple;
	bh=LxY2zPL+EUfKGK254YL9kmu59L4McMJVd8KwkPRt+7E=;
	h=To:Subject:From:Message-Id:Date; b=HdKfQdwZlU6i7zOBgB7MEbUil4LI2GkhLHVAJAJP0I6Q4EhDy+naGSldlOcffk5oUQiykpWJ9uBbWxbPGhFMjxrFII1sGxXnZE+XoVrxJRm6w/uxAR3/8x5OiIpEcr+SnoPI+h7LWpO2w/lmx2NCRDF0yEuHPB2yGxqRvDFBo54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MYnEjqjE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MYnEjqjE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD5FEC4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735812353;
	bh=LxY2zPL+EUfKGK254YL9kmu59L4McMJVd8KwkPRt+7E=;
	h=To:Subject:From:Date:From;
	b=MYnEjqjEj4Qvo0GjYiYDqMPanNgJy1aL0yVmH9JtTnomtwD/LNz4VaMkfwyuepSiC
	 9Yy+9KAfL/qXmPjgiwU70/TDseRdWFxfpGJOUe8wNKQqGGpQ6mq6MBqmRV9hHg6T+V
	 2ia5UR+VLpMeqOGvAnk8m2/PIMz4DE13tlTwBeKh42Q2+uUqX9S+KLOIe/G9/nzobx
	 jVLV4GHz+zCaOarto3H3owYs2TZ98QzQ78J+j3dOZ65QxJnFywgj98rl7E/Vke5k9v
	 wKzE05zaWQY95ZavBzejV5xM1mKKDWf7tUFqiWOHplGt9K3BIR1lIlaVW11cbswBHQ
	 sWYKrzuqie4Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A271E77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173581235362.5990.17370540057646986109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e556befb2b392bf91027571530ed8410eeea76eca9ff5cf31e95befc902dd0d5
Date: Thu, 02 Jan 2025 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735812353
