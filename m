Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DA81A21
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 03:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6478C4339C
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 03:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679973185;
	bh=ERoHitknKU/nwdJHgA9fgFNQJjwcQiXd8qJTT/CcZbg=;
	h=To:Subject:From:Date:From;
	b=V+hpq86E20j0qywKTTx2x491wYVSDo1mY/ufS3KpOgAqCBLtpEdOlWwnwbL3eDsU0
	 vcKK81fyBMSuMkhjRwVWcSUxVP/IK2VGslq66Nkqw9Chjve3MdrLwvi/V6y0TQZBrR
	 NR9MGQ9ZElv6y/6EOQaOmKgQdgWN+NBSeIfZkwdMuTBXRBSGpXHQArGhAMFOktb5jp
	 b3bmsSo5EJpJrr2N4kxfTArfMYcjuWiK2U3x4ryhMHbGU3mzxPW7kKOdq0GJM3lIQB
	 nwp4L/Six+HugqsQaMkAPzdnXz37khFk2eZZ4l26KfdiWzwME4rlYTR23XmH8iNoqe
	 erz1Wmp47DuWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB16FC76195
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 03:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167997318575.15473.4416933774328829780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4149c6148e024830b7dcd62513535954ab7708e25dab19e0e42b8817258ddf0
Date: Tue, 28 Mar 2023 03:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679973185
