Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 484E82CA7
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 23:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657667812;
	h=To:Subject:From:Message-Id:Date;
	bh=QqGFxna8V2Lj4jfNhOFsw7yRRZQ7x7Y1g9cb9u+hUoM=;
	b=YeoGbmXGxS2IAGReMbJLimC2c0WBzYtsLN8+kSrB6xUy4Gmbcem/AaFQMK9vGttY
	YYDqf8ghw/qkC9rHzAzvxZ1/KC5e/VgLHoR3QjBbVJXvJ67RJYGedUaQWwewtMhs3iv
	0Jx/IXoYYX+h6DG+ebjI7cw0FezacV+u6sHkxG10=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657667812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QqGFxna8V2Lj4jfNhOFsw7yRRZQ7x7Y1g9cb9u+hUoM=;
	b=d9Y4fEq5b5o74hJ77eVlJa4ey4VgsXdcZjVdUvOqrar17HITaosPHqmn0nvn9YVm
	juJnNJHQcyB+mx/Q+a0T1abrhLvaRX7ooAghBY/kr1T7Yvo6KENwGrbBXVGFVY+ySFo
	8dbahg7c5lBtlKMqRt4Yu/3FrenqzRl5iMXk0o4o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f4b37bc2-48fcb079-6709-43e8-ad3c-c69ff171ccf4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9285549312ff0845992ace59f8479011b4f5c83389cfbf39e6dadca190657547
Date: Tue, 12 Jul 2022 23:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657667812
