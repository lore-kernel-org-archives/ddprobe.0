Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA8301392
	for <ddprobe@lists.linux.dev>; Wed, 25 May 2022 21:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653512879;
	h=To:Subject:From:Message-Id:Date;
	bh=xovoCw3VfATuM/QVr4Xj11zweAeJXokfknLrYrvhSqM=;
	b=idHKgYFNpNZKvpiSjzzc3OWI+WT8URZ0/AZaz6nXZ/vXvgrJvTEGMqrtzMzJkM5n
	A1QhdZ0LukFv1kHNr3X9ZQkcLgxTfgtuasAQeBGEfU2JiF7TGEkvMknzQ8zHqWcICDy
	vdQUTAKGdlkX7RJcZ/v/ebwWYz1GOcQRbC8TKnZY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653512879;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xovoCw3VfATuM/QVr4Xj11zweAeJXokfknLrYrvhSqM=;
	b=NAm/GtgI6Si0FkPc6MiqADzHFV+NVN695wy+dCLX63ShDA7klBoCPBqZSeKUKuto
	/8tuC33NzYwz5YaY7Sg4SKfMLyidCvHEFUA2GhqdVaIo/KBCRbF1ln0bfeBz2havClX
	YSYFnHpEoqFdTdhl1jISMkhGcDjbsehIZDcifK1Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180fd0c3c8c-eef78034-2282-4a0c-a243-7620f8b15d59-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 10565aa75944c5f229b99ebff4b6c0556d85b0a666803231f817027971bfbf87
Date: Wed, 25 May 2022 21:07:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.25-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653512879
