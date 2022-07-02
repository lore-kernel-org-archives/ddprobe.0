Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 358FB4423
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 22:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656800212;
	h=To:Subject:From:Message-Id:Date;
	bh=daITKCSFNrgCTu15IJJWV1zENhV3st15ZQ6dnqqYIgA=;
	b=LQ+R0iUyXGMNOnCnf+CnXGLmMswQpIpwK5Ut2pVmnd26IrMHHVOXQpk1G5ycQjV+
	hioBt3aMap8qecheMxyX6RKbn2gM6b6EhP7Thlbt+r4HLfgqhr/hYMjGe3B7Lpb5Q69
	D6nDzrRe4bgNmw8KXZamAml7RvbwGVHhgFbt+VjI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656800212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=daITKCSFNrgCTu15IJJWV1zENhV3st15ZQ6dnqqYIgA=;
	b=PCjbCqs/cW6ZcagM3fqMnzXIP1KXsh3xUY3gA7vOW+UumJqGRAy9Zu7ch0/zgbCi
	QkfSeseQaaep+ftiXophsmE+rga4N0jB9UKTMYUF3++PfspgywCJPWW3mM86XZIutMv
	vNR8ivMEvL0iJjNWUY3tAaH8f0F+zAek5R/xWino=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c0fcf54c-acb6d503-dae7-4153-be03-2cf28fe518f4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0152370e2fda4c7db8caaa40bf565456d8bb527650c4c27ca42a6cb9d673a060
Date: Sat, 2 Jul 2022 22:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656800212
