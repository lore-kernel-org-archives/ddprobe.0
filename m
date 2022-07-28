Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74CAC7A
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 21:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659043252;
	h=To:Subject:From:Message-Id:Date;
	bh=Rt48Zebq+TEWIjqpHGZAhc7/mI/7Ha/RUb/YL5A05QY=;
	b=CpZxGGICyzfJC8+S2TxuImNqK3HoKxmMcf+LbkF0kWnP9y1IaxW7CDR8M8Iefwbd
	ha38ZPV+YOgJgGKNN8gyEDmYGH1SqCXNtUr/fcmJ2rjwgRvCY4ojMJ61rAnvohx0yKe
	4/Z0jaxN7djxePPKvPOv7r4B3Qk8Y+8dbdBX1I9c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659043252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Rt48Zebq+TEWIjqpHGZAhc7/mI/7Ha/RUb/YL5A05QY=;
	b=hAj3cLWAJwCPGVeGiHjqn5Wt5XE9OgpJVHJy9VqVxoxIbIS5FW1Lg4yv+IXWMUB9
	4PRLaTualAtS08HfgCV+UuU/bNJgry9EnGGyfjg6oW32QLbdyrcQJtwdzeiL5SlUrWx
	Crf/mZMQRul6Yl8ekE2/1MN82nEoM7LzOGpgrOnQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018246af0973-9fd643c8-33d0-4100-9c58-b2e54ec0a697-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e63e68cf5ac85b55312b3ef332f26d824051851d3d9e4634303e1e8e8e26171f
Date: Thu, 28 Jul 2022 21:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659043252
