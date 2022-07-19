Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2870A2561
	for <ddprobe@lists.linux.dev>; Tue, 19 Jul 2022 22:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658271412;
	h=To:Subject:From:Message-Id:Date;
	bh=Ev+ka6mRaT7MjklqQ4moqWUIF3mDJHRxCumVcFvn9HQ=;
	b=eGVf6IeyWrfpeFlRRsY1z9Cf3fmQ0JtLR8BaDzu3DZnKWmAG2LLzv7jt76zDVU/U
	lUhvam7s+eICk9Drq6p3S9yEhA0o6oFj3qQiLDjroE76ybevbDm787BhrNCmGXf6xjZ
	7fSOZTw1ok+T8Kn9cn/WeLYL6ijTUo7+ue4FoXY4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658271412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ev+ka6mRaT7MjklqQ4moqWUIF3mDJHRxCumVcFvn9HQ=;
	b=PxsDMu6QSfB2JbI6v3CD7MUAxkjBBh2AI0mvXvwfL44Ed/T0M/qYVZFaiEEyLF6s
	mZ1b0o3r18yHOA6ywiMOTc9rvq62WrkOkEhPatuMcjC/u4uFc80nBg1nadC+/zC04k3
	Jo5ZjKlNy3YGnjP/fV3AJgTIuqu3UjUfaaG2YCDY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018218adb0ad-d3346a41-1c90-46b6-999c-3861fc42e730-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c7f56d39bde2c5e32c53765194107a5edc92b0e4552433d4c543958e06eeab99
Date: Tue, 19 Jul 2022 22:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658271412
