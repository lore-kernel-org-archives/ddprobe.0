Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 006717A
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 05:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657950412;
	h=To:Subject:From:Message-Id:Date;
	bh=xRLe1PkcGbJL9DR4La5dqWz1BuR4h83YTyqMvVJz5jI=;
	b=bq0ueeD8rKcM8T6wd2E4e29RR00mb+SF2EM9yhTgUUAV+9NJ5pfs30wv4F7QSeIy
	TvJJy77ZHPz0NRa/kuL7QADab5eIlEauqdRvV8vPbyyCjNTwVY2GWcjbbmxKs5OvUfF
	jy+HKYpFqDbvWJ3sCpHdY1vBH3RJCKIVHBLp2SP8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657950412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xRLe1PkcGbJL9DR4La5dqWz1BuR4h83YTyqMvVJz5jI=;
	b=MCOS8dUEMn06JJ9OV9l8c9+2CpMSM58eYiJgm8vyS+5JUyuXvTep8lpTiyPNpIHH
	SUxR6vhANz66jL0GeD6609rhIWRcld9x5sPMAXEEaSXq+0TYNBsUtwizEx5zVB2oYIU
	gQVcoS8FTzOIfJOZhJsV7M40344kGFVfpDLPQdr0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182058b9e02-5aad718d-390a-4529-8c80-6fd8945ada21-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e6dbea58154238866c31d4c1313a677d98fad3c96dde79b73363e2ac99e4e69e
Date: Sat, 16 Jul 2022 05:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657950412
