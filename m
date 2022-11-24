Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C57C233F9
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 19:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AB12C433D6
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 19:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669318254;
	bh=IxeVkiWIGTmgQ4t9AKIp6ah7Jyzph8qzgd8kf3o1hJs=;
	h=To:Subject:From:Date:From;
	b=DnrIz2QJ8ZsGzbIEW3dKHx3TVUpnBzANeG/cYtpNMKkscOewmU0W2ywmYR+IqOH5y
	 SHPh8Cd9O8i8MFjEMp6gmVJ8WjYrDg4WEP7jDbzpa3S5a76vk9fmRrFQa/0+o+s8iA
	 3w3OClHUhQhQdEcJJIodgQBLQsyS+vCBmqYaHIc5N0ZGACQjv/nn1xakF/O731ZOx1
	 9r+Qu7+vFHPM96yFzcO4upaY0mOyNcJ7OkKYWpIztNwjE+tfYriYfigpBqX2mjP65N
	 dxx/1JNfB0LYB8ynxyoU91P6CRGw2FXQ/7I/EFGcI+/uz31onzngoX0xhokJ6mN1ye
	 C3gljMffAdwhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C2C8C433FE
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 19:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166931825436.5247.9104673532376605532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2c4abe3d6d488bacbc3ad404a52485b0c52c6937d60a577187ef083f6b8186b
Date: Thu, 24 Nov 2022 19:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669318254
