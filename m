Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8032B622
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 01:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660352452;
	h=To:Subject:From:Message-Id:Date;
	bh=whRl8Pn5dftBqGz/MpfNHWIQMGSm57Jl6J+IM6Hc7Zk=;
	b=JEFT6QaJk0W0qrPQCmk68joafHj+PNORXw/PpfYqtxPw113KriK9or1aIg44j5cY
	LrtE+JmU2wuQHSHUoOB+IIhggDq277tM2hCsd6OqWjVSi9UboXcnuYugUFYeKeJY7HS
	B5t5Wf3X8EwJ9Rrg8l9BZONHRSLg9AjD6GR5t4fM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660352452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=whRl8Pn5dftBqGz/MpfNHWIQMGSm57Jl6J+IM6Hc7Zk=;
	b=MDBfKZtpO4Id3yoA2dlpgBzV6ks0R38pvcM3lMGYn9CRLU3W6mxQQ8VDZ0xfrM++
	/VSRxGJ+DYCVjTRLYLJPZJnqChofUmEJPvfrA9J5Ut/kij7zNpzZNMzbaH27hkMZiIF
	wzxJV+shwUqIxc5rvfE5jIkVoy5an8SLFTviACow=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018294b7d808-ca27200c-7c11-4a35-b60f-f73fc8012062-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: be6955c80230d769c5b81539f788b8b3a6228014dae453e5cd6723752a14d14f
Date: Sat, 13 Aug 2022 01:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660352452
