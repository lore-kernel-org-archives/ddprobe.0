Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B25A25C84
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 00:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 65E58C433C1
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 00:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666224053;
	bh=7p3BFNl6uThv7LDEDoerAyvN0GGvnwDXK/m3X4Xp9n8=;
	h=To:Subject:From:Date:From;
	b=gDB3E6dWxziogcfHi4MexV4+xFHmVfG796UJDMAJmU9SB+Qb+TyEdGF4U1mAidelp
	 qMfHgF9D6eiwGXrNlgNdpB0yKyl6Ydopho197V8WchYRQS6B1AW8GVeaBzDqxxGQ0J
	 jD6ewSMJVH3JHmDXKI1Ukphq4J0BVDdVxmNbYLfIkcoy+q98dwGSsOSd2FmaZ7I3n7
	 W2zKgfoG/GPpoK0Q1wY10WmYaABvCccI549vJqOV7taJz3/BvR4jbnk4Z6AmQGyAsU
	 siNTihXdZXyb+yG+A7A7Wd2tuI7c3e98Ahwn7AWvgWU888sm05QGW841gb9Aza7Als
	 k5P3L746aQhkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 508E4C433FE
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 00:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166622405332.26843.12919010157349074031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a0bf4dcc56c712bf62f338a6c1314f77086bf1f74bcd5bcd85235b7aab79873
Date: Thu, 20 Oct 2022 00:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666224053
