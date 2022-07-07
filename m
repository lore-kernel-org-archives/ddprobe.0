Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25877637
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 16:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657211812;
	h=To:Subject:From:Message-Id:Date;
	bh=ZKYcQt28nfZnfP+2Pa1xy4C89VkbL7dqFfStwOkA380=;
	b=bDRUQjwXP5areYdLVX0HUHmSevkpbXUjCkRpOjQni+vRKsDDLHGnSnOZgzEZxg90
	XxGc8WSK8Wo0jOyoyHHQI7Oikg/HovoalY8BX1ejfUILWAqcSBWIwoRkXcUyQDVxutP
	qoa+HORrTPr962Vs2UlUfPusycaHdLM9Ysz54l9k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657211812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZKYcQt28nfZnfP+2Pa1xy4C89VkbL7dqFfStwOkA380=;
	b=Vj9+fp+Io4I+sow6QYW6I/GCnuzuLz/NbJH8ZUbW2dxeplwKbSd8A/k/T0gi8Ar7
	RzBW/my0Rcz3CZWPpMIAy+u7b7vfdaIu1c05rJuLmMvAEa93J46SW4MMF4J+JPjxGJA
	q1eIF/ekbM/okPc605/VMWm6NrGSGHHxXTjr/jlg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d98579cf-420f9995-84a6-47ad-a672-5627db2e2faa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a697dff5c26a00242a7ec0ae35b053fc8253c5bcd7dbc9fb3d7f40cb612c2902
Date: Thu, 7 Jul 2022 16:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657211812
