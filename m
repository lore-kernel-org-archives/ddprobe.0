Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27AD34405
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 11:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658318212;
	h=To:Subject:From:Message-Id:Date;
	bh=Zj8SqRiEFW6rEbBvD9NzmFSRW4tDxFekZIaZEbgoKi8=;
	b=BT7SYhYqU6NyS7qdBVOqc0bbURT+nWMcvMNOrp/vMJLtnYWr7GTVpBxsGMr535ov
	QNc7kVkr9MzSQ87PutC8in2yYsT2ALjxwxM+7V8NVPG+02hLZuhm6TAqxl+D/vDEA38
	wVGiLQdiL7S8OYhzJvzT3f0ePgRh1/hMx7sJx8mI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658318212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Zj8SqRiEFW6rEbBvD9NzmFSRW4tDxFekZIaZEbgoKi8=;
	b=K1P09abTXZL62qjQGWemcCk2KB3MJ+77Iab2Ojloa8IMFWjx73sRJm/nA6N/X211
	3MEKVk+ScJp0T1L6g4N+S1v/4sit+LzS5cixUEg2Yqlw1EX+ZF+XccKsAwLJyLle9qy
	BiSMlvW3qJmT9yntU3I02yxZZA6n5qYKsjHJk5jE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821b77ccc1-2a8ab5b8-f94a-4b90-bc6b-3b1d882d625b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f8aaf75b5c2179be54354e3e03ab586671cef4ed0246f9708be1469e398e12a3
Date: Wed, 20 Jul 2022 11:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658318212
