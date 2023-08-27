Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63A2B13FF1
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 21:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF033C433C7
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 21:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693172648;
	bh=wlvsLE1U9ph/4IZ4fR3ckvtjOrinzL/HBNyFO1LxIt0=;
	h=To:Subject:From:Date:From;
	b=h/D6xT7EZ6FJ6/JYeJ3QUsGRdnDcWBJgJvi1lBni8r9mewu4pqdDVIJZX2Uv//4UR
	 dRXHb2Rlv9TPjSo4/JsnSP8HoVHfioyvkou/hV0Sr4+Fc8FXm33dd5+UEozhL1syRn
	 dOIpKGSNvmGZT+kw7mF3QX7yZn5V/7Ulg7ms8jjb+Q2+wCFmbOhw1iOsM430v1JU2E
	 xU6eiIv1M9h4B/7uWEO8HK2i+vX29t4ezvtD1BLTQ3lkBO6T9Ubop1OAojFnaOVDi+
	 rY30MRTxYWb34lAzWeDqs6GuxI/RtbKjXOx2uvSdRKxcNxVj+yw0LMlS5VLbehvv3z
	 molhci51rIfMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD84CC83F11
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 21:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169317264870.19122.5833809976125927318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8a11ffb5c56e7b00d9d25806220453e0bae8bb1d1d273c2c16caa2fb66db062
Date: Sun, 27 Aug 2023 21:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693172648
