Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C094F17C1
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 11:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AA27C433C1
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 11:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664797853;
	bh=fmL/A+HAxl5R01glTfTo6IzC7XwoW1wRfs1DyixaZTg=;
	h=To:Subject:From:Date:From;
	b=aNjZobhQUwTPVGXnYlngU+DHyfeTpWTL+HfsLW1bvbTIwSBn2imLCa1ZmIsBtU2+f
	 wQBUIdarxeWP7P8o6cTl7xT0aS3MFzZyPoX4gqYtLj7HJxBub8UFMigd5Ba75AY43N
	 Ij8WEGjSooL3svm+ziPo9Xb5giq+TYwus/9CfszdIGHkrIiQ+XKGSL/QtFIXmbBm6c
	 hK/E6FnG4zD6w/rC7cYuWL7mPrhToA0aqS8+kwXE5k32cctURUpk9sXKK7p5U+TcAF
	 16617mMeAAfWdeRTGYNg0IyaFxDDbdbpocGrLLfhXLCgZnXbY9NJWoh9Hqw1J7iKhn
	 s+dq/yG4OYBew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53878C433F5
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 11:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166479785333.12266.18025233451280246629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1535921ddd5d4112f90a4ff8f3f2c2116d6fe54ed999bb432daf7f94ed2e8828
Date: Mon, 03 Oct 2022 11:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664797853
