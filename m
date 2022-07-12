Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05C2C3D65
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 12:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657627612;
	h=To:Subject:From:Message-Id:Date;
	bh=Po8C1Q9K3Mr/ynmQ/9i2wMKO6gS9lim2ssmcybCD4Cs=;
	b=NpVc1xTcXiPvJLE5s2W+OpLUu3WR1vvLzLDEWIxVjf0lB+SWPnw15aEpYsZBmbG4
	tgrwkK9MjcD0pUsQIvfgXefEDQooR82vF3OBGqX0k/SrXDc7CYP6I0QR1NaXAwksgF9
	haBFx6DIdccQ6Q8WJG/zRFTTl5ZzvVN37ex9b9o8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657627612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Po8C1Q9K3Mr/ynmQ/9i2wMKO6gS9lim2ssmcybCD4Cs=;
	b=Kabx69HSuQ+wFPLZ+IaxlW1QCwXYEcyNy3itJe/mK9tVsPn7A0IL3NaniPvCu0RL
	gel1QzqMT5BarrwkRpXSlGNLnuq/NtwnTllPIO3peUJV7jWZALLcVNQWnGLfj+hnMAQ
	v79K55TqlvTNnyf3Ams6JJai/PKi2udQM5UKnVds=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f24e146e-506accff-3ef3-4b33-bd02-617d44ae3de4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5c8647496b33d29b382802c0b36e198900d73441700c882383dedb88079699f6
Date: Tue, 12 Jul 2022 12:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657627612
