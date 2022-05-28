Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CF2023B2
	for <ddprobe@lists.linux.dev>; Sat, 28 May 2022 06:49:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653720540;
	h=To:Subject:From:Message-Id:Date;
	bh=/O0TuKYWCJPzN/YL7scNb3ZlI4wo32hmnjijWaC7RjM=;
	b=DQf9BjGH9/aqLJNPU/UGjlo9xEmt+fnaKIm0iLCWZYrMx20RVkS71Qt/dSm0ZOOT
	qBjU7Fz7/UmsJ34eEzc/6DIntbaR1lrbSojEq5DCVmJhRaBSJ8jzeKNQCsgM2t0Oc7R
	+6DNOptZ4Bz3cjdDmZ7ova+1sq4T3/SKj9IOexZM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653720540;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/O0TuKYWCJPzN/YL7scNb3ZlI4wo32hmnjijWaC7RjM=;
	b=N5b9zBwe3hAUMvFOWWFMgB885ESw+h7Xx9QYAEUckZAdtcNgmy+GD62p/tiWvGDz
	XvJIAEs1Y97hYyOeMbyr2+El4oeyO9aJXKX2/AXu867HCixYnNres1GtfzMg2xplAJZ
	IF178DiI9QS0OoYSwvNVDcT7vMz7qcU6Rqo3euiU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181096ce06b-cc45a471-4664-4062-9e86-6c1a6838e64e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1166fbbaa93d5c5ece3147af457b5938e4b12e635527856827aa67bb6b7cbcf9
Date: Sat, 28 May 2022 06:49:00 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.28-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653720539
