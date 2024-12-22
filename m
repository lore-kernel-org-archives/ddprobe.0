Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29E00145A0B
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734903354; cv=none; b=XuJ8cD4xuHaNE/pGs6k84XqQCxusJMQ2vIqrs2etpfVFF7J3+RJog/niqcpetycQfLO9cGtdZYv+fA8WRianZFNvhY+plZPIuvxc4oKQ//QwA0/0hSNS+rkkRzdBHu7cVPSVYQlcmrx9+yfwE5FE+0D/yYnifH/Tu++WIuNiQNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734903354; c=relaxed/simple;
	bh=o6Ol0K0l1qmAf2Z09ZuUKqQ4l2hQN7lHfZdIKPSgmlw=;
	h=To:Subject:From:Message-Id:Date; b=tocwnvmEuEo9ErPn93zA6sQihUAQa6gvoSrWbSKBY1LA+xP8goQTobobs2xCJ83gWXCFphLnAK26GMUgqD4G+zarxdgVY8u6qgLWMBvdfc3W6dlgwTcyW8aDjgnHBjQVNTBVZF3TLKXw+B+KdGLdz7Z9Kwbi4KN05424oIhOu/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JfPc0Hn+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JfPc0Hn+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF96C4CECD
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734903353;
	bh=o6Ol0K0l1qmAf2Z09ZuUKqQ4l2hQN7lHfZdIKPSgmlw=;
	h=To:Subject:From:Date:From;
	b=JfPc0Hn+aNKf0BxDFyuzf+AzINeP8r9BoPpov62m+5/RPtxLEyOu00oQKxceoRm8w
	 1DANwOMZ8yIXCiePRWGUX0Fzu90KKFvdwh2aDU98bUjYjhVDOMk4n+hZ93QOBvAEkG
	 eIwm+NXp8kdr65IaercSrUQdT7E7puUO/RepEA/pPd3AzKL2IyI3OvXL1ZmUM3V6Gh
	 tVjqkdre9UE4NrzU57hLjf9EMxPCYJIjXrf7i6hBpx/R3R49aeydrqKKLXnnE4ppFL
	 e7nZjLzaWDDOq8MuGTCyKjV90nbYDxBnSx4mMMqyhGLRCXB/sKMiuMIBRHKpVrkZj1
	 yE50+EUG6/GlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E04E77188
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173490335360.6993.18102194612305765852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 661fc7156516449b1e2be22348125928e1fdf8162438ac0077678f73c2ddc20e
Date: Sun, 22 Dec 2024 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734903353
