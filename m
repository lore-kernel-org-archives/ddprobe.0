Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 160824A01
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759445994; cv=none; b=WC6/6p+AS99ITo2IK9OJe3GBTj78R1trYAmuWT+zClY4kw/tP69DzfPTF6bwr0S9fk9LrGo8Q2GBYRLNopOEvf5eHhTFHGs3tsl+MSxJOCatUNlGh9Vs+rX+cG07K6KjBuG3ZzKTMzMcFEn5QhpeKKbLhCs+tVs8BFSEs9ujYNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759445994; c=relaxed/simple;
	bh=VeWEZgAJR3lIUV34F42bR8IU7gnNc444YvHf6KV39Cs=;
	h=To:Subject:From:Message-Id:Date; b=QTtY+eCgw53ZV/Dop+uwId9zB1Vf0Oh8P3keTSkjgBgtLPJTYDt72QF4yFgLfc1So+nFxWiiuuORQ2UB4BxjuwWS7+avUo8EKfx4rA04bN3Nn1OA5TZeoVlf/Pyp5HMoHKcZQKE1aXG+V2nkEnV7I6piNWBY5p19+wXe65mjkCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ke8hCmS7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ke8hCmS7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A76D4C4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759445993;
	bh=VeWEZgAJR3lIUV34F42bR8IU7gnNc444YvHf6KV39Cs=;
	h=To:Subject:From:Date:From;
	b=ke8hCmS76tkiK0bO1q3MRg0sEr4SqeTX+VV7nzktalSE9YG0TY3HnLaj58/QRPJyh
	 YTbwUPktmkHJLp2Jyclzj/79onQYybz6LOdKvP9MF/Y6QPjwO/1qn3nmPZj/X6E+cB
	 G8PuOG0n+bRzM1gHo7GYVLkqxzIUGgbQbW7ASJMgHVOwqB+JbHnmllS+tfwwR5H/eb
	 0teYZM8sKBiE+XpdSZnEUc3I2O2zEpoqtyDh0kpYXSNiw6LzKYhMgoAoVfXkOwlwJJ
	 d2+Nxd1HDEq9pelt/ShHaA7ddzdc+Lb2WSyrKLLu9xSlfXE8wVI4iwlkbsqLnDjkrj
	 H1XJfffU6rgGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92724CAC5B8
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175944599357.19211.17641221136951491099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba6ecd0d948f7bf32029cd04d496bc796273b280738edfd8de98b30e57c5037b
Date: Thu, 02 Oct 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759445993
