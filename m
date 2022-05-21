Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6609833CE
	for <ddprobe@lists.linux.dev>; Sat, 21 May 2022 21:25:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653168299;
	h=To:Subject:From:Message-Id:Date;
	bh=PznGKq7UvZ92eK76vn5kqfXzu8Sv2Ygbw4Of24Q5kMU=;
	b=N04hlHt5GFKjcccQutZPd+oRhiQdNN3aifBDgiiCwpUsn7Af+c8AVTufV3cXNPBO
	AnfXqcOZlBpbja7QbOZfMdby2j9SfNk+7S3OjgSISFhdcS73uByPfznyEVoRK9osJgN
	7rM7BmOsXSChHf9ueNrT5Jhvv2wnZJAmtTRWmldQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653168299;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PznGKq7UvZ92eK76vn5kqfXzu8Sv2Ygbw4Of24Q5kMU=;
	b=WO8leFgFpihFI9OemZZehMVrbUwFrrT5kR1NZbkqlGHJm3N9+cvAi3TYnMCPULK5
	kRgETT2P3S+u6AnvdoZeUc6hxZS/Mwk6X175y0vpnIvVN5zTwZMHOe4KERKflAzWC8m
	px/zok/GDqLud+sH1/Oj8ECjbnK9t9yx2ubjvWvs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e8825d21-9494d821-3d6e-4795-b069-bfabd3d57326-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 23948071349903ca5b2bf3189ce28a55dba7bea9d3cf8a80f251045976087119
Date: Sat, 21 May 2022 21:24:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.21-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653168299
