Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 554D517D4
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 04:04:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 02761C433D2
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 04:04:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681877046;
	bh=NSW+gP0qi9ZnPlCEpB+kl5ZAs7+KZdiXFMMMIQC4M1Y=;
	h=To:Subject:From:Date:From;
	b=BM9JFqWIVND34WElXokgVO03UMoiiS1AaK6lENR/5ROb3bTsSvnN+HeJNqaIQ/Atn
	 4b16gi4ecMH+TyrrojpDga4M2QU9/69PGUnFl3kUER7GV0WwDYWk/XbRU4DV7DNc4S
	 wpwAj2T9tydEi1ieaSs81yPl8kANDC83GRelKMhNXSRSbd3WPv1BuowcuHfFnbt8at
	 xHXk6jKYmO8mnGN1/pll3YrDTJRCUjwvrSg/HnERNtukRi3n2saZn+WNgx81LdcsXR
	 yJic8RtdbLgfAul/cn0e9ygahmuUlcgCgHOq5NIwQKSgD4CIHV9VGRtRjCT4XPiulP
	 9uP0tEikdTgbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C13A2C77B73
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 04:04:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168187704578.29762.12201202281298440708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94d41e765634516a870c619b2cf83101797f283d84d18cf45992c9cdf7124268
Date: Wed, 19 Apr 2023 04:04:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681877045
