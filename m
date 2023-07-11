Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DE9918AF8
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 11:27:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA24BC433C8
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 11:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689074828;
	bh=3+LRw9vsvHDLzydvMzX56J3nK0b5QqQu5U1+mMTCu7Y=;
	h=To:Subject:From:Date:From;
	b=aBSHAtluJog0gZNtJYVwylZUAzFuphrizQ1i7GIiTDd0kRxLV4WwmZ1j180MB+1d6
	 nR8cYa2fTn6bzkAtiHTK0hsZfDkOx5Gp5eO3OSvul9wG1Nhpblup/svKs2GipOrA2I
	 LaRMDLNiirP4pjjnqUdfQ+ohVaEZ8VGcnPMsG2FT7sWo23lYGftUxQwbGYzdgqgFjd
	 NBX0oKYytoP2MlD1yKZQkjGwAJZnTn/3r7Sjq03PpTtIs+Egn/sQ2R98Vz1Rr1Iw+V
	 09OyMrRm/u1zJifMzk8l3uVE7IhNgOIlERhizbRc/+reMDB596+SgmrmIVOtwt5yhd
	 5CMyiWxROWssg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3264EB64DC
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 11:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168907482866.12883.12325771820585279789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d8ae6b3e375353fb6c54cb7af5d502b17d9747b1ca3f1dfe72c604f34f99b98
Date: Tue, 11 Jul 2023 11:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689074828
