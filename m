Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14A217A
	for <ddprobe@lists.linux.dev>; Sun, 15 May 2022 06:06:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652594759;
	h=To:Subject:From:Message-Id:Date;
	bh=bm2uERE6U/TWWt3VDdBqJxiWDBRGspnQWO6NQjU/+Wg=;
	b=bg7MPfdDSgUwX741DOaopX9k7T0ZDBpZJ97TvFuaQW+t/h2/ME0gDoc5a5yFiPxB
	iP7iJUXx13OrO34IiU7mq/FmntOzVNp3wf8u9PuyjdPqb4cQ+DOtno5HnoUP6bzQK7G
	qDLu7LTG0FJwfWygLWmAFFRCHMDTYsmObmVMTxjQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652594759;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bm2uERE6U/TWWt3VDdBqJxiWDBRGspnQWO6NQjU/+Wg=;
	b=FAXYjVQrSR7kkGFDPDz+J3GPX8+g1RTr5NKgbNGoOC1Tu6vxrx8KwyhMz5hBAnPY
	n/dRsLxu8Y9UR6BqFXgi6K4lxsWBf7luXnTG4e7qWdSDOGHfqq1rOZFsKZETlLfW7lJ
	0ejT+Z8bO1tQpYMGkR89AzWgQSk0WncBrooiXcfE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c652d64e-89dbfe0f-a1ac-46e4-9c69-d72f0a3b9089-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8d238be67cd4862de26e88d540156c1ca1f22b36c3010c704f4a2816e0f45aad
Date: Sun, 15 May 2022 06:05:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.15-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652594759
