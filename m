Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D48ED2595
	for <ddprobe@lists.linux.dev>; Sat, 12 Feb 2022 22:31:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644705060;
	h=To:Subject:From:Message-Id:Date;
	bh=E7z37qPtRgL0xaqxZKKEwbyibnYZpL8eOYIrYvHZ9+I=;
	b=Ib+MmYOh3wOKDZZU2tTOOz/7pB5u/It6QC2fLEMrHpuOsU/HKMWgby9YXeEeOB8F
	J3o8XI0xYHRWu1fE0ugLOigvRD1tXa7OaU+J9VFZ5++tHKFWWdcx7VSjHKqk55r79uS
	V9xVKQ8x0gBGm6VPPaF0T4XkEW9q3/nsuI78jaKE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644705060;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=E7z37qPtRgL0xaqxZKKEwbyibnYZpL8eOYIrYvHZ9+I=;
	b=QosVfGB5bh27J988B6WqRyBHEeQ+PBfMsGJENLbFBiKYycT/6ReJ6xl769tl8Qwl
	8CBZ9CfROfhRFcItGmHbGAK3RktYoSeEckkQUwqMnJJZ2W/q8N5A/93la+Cnb8BZOM1
	2GYXJqZv37DzFhOuroL0N7663YSUvfIP/rSSgc1c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef00f94d2-c7e55672-c9d8-4aa1-8ce8-15eed07a87ab-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fd44931b74aae5649030e915e2dd56cb1ad145118e54e1969e8c69d82e696a10
Date: Sat, 12 Feb 2022 22:31:00 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644705059
