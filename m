Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13E3A4A09
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 16:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658507212;
	h=To:Subject:From:Message-Id:Date;
	bh=a0ZHu5H7zNsasgGL1iLjaqnTuZrrnacRcl5z7VFDKVM=;
	b=VHGj4TNXp173oPOBwlGgZSOxZ5KdCOtqN/GP9oMCqOCYs+Sy3LxnxiGXuBPo4CyP
	XmMwUE+y3d7vG6PuTWmqtYaWiaX4BXMwN/jQGi4kabzed/46UyXrWV859PJCKLEjRVt
	WUaabOg9Vm5Y2vLEjjHPiOjLnyI7euD2TL5miXbI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658507212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=a0ZHu5H7zNsasgGL1iLjaqnTuZrrnacRcl5z7VFDKVM=;
	b=Hl6p6Cl5KfqoEGUkRYUFIa+Sdb7L1QGsBt6Yi5qL0zQVu5/kjpd+nJZCngoqsZk4
	bvTTaDNnBJTh69ga6IBMVxvdSNpNxYT+KQL3SsUWnVh6nvsA+lH6lBAJt3jQSBGHds/
	3LftZCJb6otK9rIYsue6yghEu1Q524liFpOH8Ibk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018226bbb611-05ede728-ac5d-4e23-b274-15aa91a52321-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c8522e78711bba8526815619d1a9e850f9bfb2fc746c852a520aaf5df78d19a4
Date: Fri, 22 Jul 2022 16:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658507212
