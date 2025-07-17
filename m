Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19A801D7E42
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752742794; cv=none; b=lNyPoZP+JN4ZD/OVbszqXpvHG1Yhe8Pdd+8cLvVt6bO2kp1UtL738Pzl0K/OnPYbVeBli7m9HnL5UYIe63tBBQLT3JCe5ThxeWQ9/7Pqdum7busINZ0nydqIYlw3yEpkfvv/1iK1vIM1y2zpdqjFbQGjbE2RQXz2gTChK8l4dPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752742794; c=relaxed/simple;
	bh=ZCvkMdzAEl4ji55YtyFZbhsoMMDBg6+Y3Lcy1s9DNnc=;
	h=To:Subject:From:Message-Id:Date; b=GZ6g4nc0zJDnTJ7c7v0Tq/ge0+/gnaxA/ZA80kYt+G8DCnMPNCFROt1Lx4+AmcJD5EvkbyFcmmVloq0uZtVC1hRJm3bgjQRkC+kjBngacZB/TRpRn3fslILH92LWTrtb2DZ/EH74026CqPRv45GSrNL3L+LOx/F25q+Mj0nJiZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TsKxZ7s6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TsKxZ7s6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 97B75C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752742793;
	bh=ZCvkMdzAEl4ji55YtyFZbhsoMMDBg6+Y3Lcy1s9DNnc=;
	h=To:Subject:From:Date:From;
	b=TsKxZ7s6LZHrTQGL3GQ0zgYZ0r+n3exEfpUQzyPOQBY+hsL3aeRqtfa1gR1Ua6PUv
	 rY0qB5JdY23b5YEZ9v9Twy3gc+7Aa5pl8ZzkYWrsNXOmJioqhzg8eeHVxKe5unJlnj
	 Oe+2mCw/5HSlZ7rNrUedu1oWNTl29BgV5c7ZJKy6Boe1IHjBBGw+eJM5KjwxoyHU6i
	 tD+TaB15b7bzQSuSkrZjFhE6sAOsiwEqgfgisGyyS5xdL6aea92kVweES9XxLWXv8d
	 7RtfBwFpLJhh1j2LZzI1KfZDvd87HUlBxbA3wWFb9E9ZvulTPs8Xsf3QEWaAeHAopX
	 hswN8qZ8K7F0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC70C83F1B
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175274279357.21297.7220565117321621549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c32987479815c949c14b491e6fd2a30717fc2831ae8dfbf9fa3b1a01d090634d
Date: Thu, 17 Jul 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752742793
