Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77AD3371
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 07:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661065852;
	h=To:Subject:From:Message-Id:Date;
	bh=WmAYDghosscb93rCoZ1G/YBj0UqwlK8Vzsviydd0HoM=;
	b=c6ssM+w1CJO+rxXpwPwCb9Je5S9Vc/vt5eWbkdTGBsuOukQrHqWxXoEEJKAVFDko
	Vjjtrv+9Qc3FWDwwI8xnjTVfsR681RqH8vhLMwl7A3B6bopLl5rKGzT7sFRWOTlVRI9
	6kFsdhm3m55umNWfzErJC6YSL4DzCcNsCuYdIM4I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661065852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WmAYDghosscb93rCoZ1G/YBj0UqwlK8Vzsviydd0HoM=;
	b=X9ZoFKfW4XfI9/natxU9QzSsqJudJBusEKdqFt5kqKCrrHrrJvosWYQY7/OAoHEC
	Uw79anGO1H/19MDz0Jua2dT1b380JZ+gYKPllRr9Bdjq1/KLNaPJIcE3DUXcIVSjccR
	ep24qLow9F0iISnUubacDHMD8j3D+k/ezA+XuD8Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bf3d76da-536fd444-d426-4f28-bdc5-c5982bb85674-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4578bea0dbafe2564d508b782631e8716b9bfe289be809ce0daba081e9d9ea50
Date: Sun, 21 Aug 2022 07:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661065852
