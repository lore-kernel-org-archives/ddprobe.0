Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0563946A2
	for <ddprobe@lists.linux.dev>; Sat, 23 Dec 2023 05:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GSKltwta"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8406BC433C8
	for <ddprobe@lists.linux.dev>; Sat, 23 Dec 2023 05:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703309296;
	bh=Xg2jxpLYXHFyCvaBal8JXisHVjHd0zyep8GPR8Y8BPo=;
	h=To:Subject:From:Date:From;
	b=GSKltwtab62I7JeOld9FaLmN6IQJllPVEopeE4BCwUx/K0vD89oz+k4Jm2BSBLpJJ
	 btHd8CvF9RccFA9hm1mhh0ReGU+x/s3QgymTSOkp5Kh145k7c4eNTFmxG+Nt3+Nbp9
	 OXAdzfS5os3TRnRsuBkwnQN9ZQcYFzg+OLSzxD6T+xPpeB1gtztHoP8NDcvLQeHwwY
	 WHLxQ3TWgizaupp4i/H+B6gaq6uOi7aOVQNCGoGD0qe44tppJGsYEeSz59/57Lub+a
	 v+9KTHWmfq/lAKbXfJXrL3rN0dTZhtMDsgFcXe0Uqg+WB+KbwuLv+oxGkSLqEOvrtL
	 IeRHlHr9cak0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64F4BC3DA6E
	for <ddprobe@lists.linux.dev>; Sat, 23 Dec 2023 05:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170330929638.18730.14087458518611600288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c094e2587ca4f9dd0a8231417c892dce72b53dac006d372d977e1ffe6ac691a
Date: Sat, 23 Dec 2023 05:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703309296
