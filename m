Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FDEB7C
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 05:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE24BC433EF
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 05:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674451925;
	bh=tQTKGEDun3hNxKFTuBsRrQ05A4vrLdhFJa0OfxGlgyo=;
	h=To:Subject:From:Date:From;
	b=OyO1tyDI72bL5cSxOHMORQmgg8wFZHGC/w71Os/fFWeIwnvaibwDZ91Nr/ZzX8Rng
	 RAa/avOle57emhwUoV1HNhfjOF80+HsmkJDfGW9CESsE0gkaLUTGx4Lui3zlpx/11M
	 EZANqq8eFxFLiaam5ogqTzyF6rM1nTBRTAXrKtZF4iUSwDcenTDLyj0YNz7OvXpblw
	 SqDYltt165IpD5qFFLRM8RKv+jTgFzeSvaTTgLdnn+3HEXCZhFWJMH63IxcNBqhtwa
	 S0wnmt7keJgZvUH0X1jxBHZyyVf8cRrhlnAkcA1LIGFOzzA4EoiV/N6BXdaUFS8D1u
	 SO6XphpGWGE2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2411C38142
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 05:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167445192572.27344.3651461185886440040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ec938c9cdf8ad016dbec629810a496481a87f2c8866fb35375eac7c39be85cb
Date: Mon, 23 Jan 2023 05:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674451925
