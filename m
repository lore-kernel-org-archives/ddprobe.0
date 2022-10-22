Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C91027B
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 22:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77082C433C1
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 22:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666476053;
	bh=/7MQAdy2cdgNhlw42fwEvwFcKrU7Valg0YBWr8HXdOs=;
	h=To:Subject:From:Date:From;
	b=fDQlNee2A0rP63QtYLMEF7zfBPFxjSX/EckmfilQuyjJR/C+RKcQA3wOQVqsNjZvj
	 CRmwLPP223kkYeiw2Dr/H+irbcdXDeZ9T18LyZUxOUGPdIJZO6QPWeELO5Hw9QXhvV
	 /ts+H0UsgXnkmdkUv0VRrAsC0ciaEXgRATrTLyTa0r3QxuUXXUDwws1mNVhbgpXwwv
	 RnFntC/o6VOMsIIEK3lEgR9HFO+1j8K8WPIb9CPcS4MwFxK1BZfhDUvSVZFcygcAxL
	 zXTBGODnGKJcD1zkR45+Jcw+QiRKOMRIGZNzwO0gMwqBgkFzM712t7/+lYfel2f+6O
	 Xp3Owa3UwhfmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 566FFC433FE
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 22:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166647605333.17252.16169095863223431198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9fabd3532eda0f952bfde1064e3f9b54bd6d907c7838c41694c992698aa24b3
Date: Sat, 22 Oct 2022 22:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666476053
