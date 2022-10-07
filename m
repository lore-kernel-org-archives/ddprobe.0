Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6B207E9
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 08:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D41CC433D6
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 08:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665131453;
	bh=mmger6Ijykc6Kj91IVul9+pC7ZQiO6+v3Vp2dSoebX8=;
	h=To:Subject:From:Date:From;
	b=UVx56OYWD1EUb/V9q6JK1ngb6m+Cu91yImuqqlt7go7KGysdgE/3XiauadrZGqXjf
	 UheESuukKqIxe0P1J2ueVXw+WrTOD1hw9xD5ERUbEV5RjjgvPPVyYIWEQ+5IAzjhCe
	 xK1U0zS69T/cd7zjSVznwCIqaE/wXY0edog1xFOsw3zyMLjD22YerHxUmEdPBht2dk
	 gNX89sp+uJla7pUkoIai+51C3o3OZ5nAumTGWISiMRT8Eeeufdqkq0jDlSw0puAiqa
	 KcrDr5iS/qtUnNIomcEeGEdL4FP9r8OTPQMNxWvwAhEky6r1sm5KDnLezmgqHRwy41
	 jIvT3wRypSEYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54A81C433FE
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 08:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166513145333.9583.11088436862865159241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10e07ffa25dd04a0dd3d8140dd87b618a406cc9fe5617e4fcdf0b100634b6c1e
Date: Fri, 07 Oct 2022 08:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665131453
