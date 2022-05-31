Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BDF420F1
	for <ddprobe@lists.linux.dev>; Tue, 31 May 2022 04:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653972779;
	h=To:Subject:From:Message-Id:Date;
	bh=Uc4qmSm9kl1Fgv5ERcHtvYdCPshz8dRUKXuSw9gVXuc=;
	b=SiO03KrWkclCtpsXvSR3JrPQEzfIS81OzeGE4SM8CNQlE9MUdh47UFT/mYWe6bI+
	oezkA8scPkOqHi+h7Px+qiVAH9urpi7zqfKo9VGCEM6sHDgdhQ9/XumSdU7d1IUxwSR
	6gvxYWWFTwst5l3Q0IujF/TVB3Rr1L+s6VvfruK4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653972779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Uc4qmSm9kl1Fgv5ERcHtvYdCPshz8dRUKXuSw9gVXuc=;
	b=aAeHYBU5HGyzTPNmVLrNIzZRVvlkCuXxbit2CBbNWOIdK7z5EjTLEIbR87GQ/rXA
	exreWGFFOgPRYw2q0CQYVzmj0fwtpe4moh6pQAJUAZI7sJw8ry1ScxdHI/n/VKG4T6r
	te4+OA2hTciwZ6/X3v2Rxd/jmixMjfQnjO+w/97Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811875c0fc-e5a1ea12-56b0-4521-9a4e-9bbdadca40b9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 73b6528ad9d4c8602f4c446db62d6947aed5939ab46fb4c076dcb0fd650a80e3
Date: Tue, 31 May 2022 04:52:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.31-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653972779
