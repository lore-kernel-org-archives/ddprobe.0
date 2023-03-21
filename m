Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DB7410788
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 22:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 071DCC433EF
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 22:28:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679437686;
	bh=qUZpmrduqNvtGFPYeiRy44zCXAKHCJms7bXaoQbMemg=;
	h=To:Subject:From:Date:From;
	b=pZ3QQKg3z3sxCOQ2+toa/ZCTeUBWHJ8UeP6j2dTAD/T4CZOrp6QPiCq+9DZgppppY
	 Xxa0ovG0DmtfhRWaRn3+WKIOvxTN+9B+72CIv9h/uHWV/WiX/wrBKdYikCOQHX3YIn
	 7hBLmDBWF+F0gtEYh+2xWaMgeqOLH5Q5z1dE8Rx7SfWj1e5V3XfFN5HssvOtf6sFZO
	 EBsH3LyeJ8u2jb27m9EHpdZLlkoA1ir7JYq3kde8QlhmhyPNsDkRe+a6+SZaS/X2Yg
	 z6PUVmIYOmcjw35CplZ4gjXsuUeKfwtTrhvalQAVIykLt9dD6eOVnl2FPmvMH363dI
	 ncPY8Z+RYE0ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E22DCC6FD20
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 22:28:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167943768590.9507.9013724251711491510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4349d7dfca61e72f01468258c88574463bac73f6e46e9f5318b5e70093d3ce49
Date: Tue, 21 Mar 2023 22:28:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679437685
