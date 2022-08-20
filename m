Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55A02290F
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 16:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661014252;
	h=To:Subject:From:Message-Id:Date;
	bh=cU7A8g3qXc55fsgXIltmfl98vKrRT/AQGizJkRc5Bmo=;
	b=YGyepX+WnVGbE9nCZuuNsnhOzD5L4YbUruWCmW+RHoVPYI8zsngcYxNXInzo1iDK
	j8bGS11vAu9z7YSvfjuLW6qP9txuxnDopHqtfXQt4mwt/JlvDmMn9Z9DoBJrWrE8fWd
	1VhNSrz3ntZcV600Uwib1E4DGxURHwO3vswz62OU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661014252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cU7A8g3qXc55fsgXIltmfl98vKrRT/AQGizJkRc5Bmo=;
	b=donOJEZUcQFb0kP2jlnBTuldqVjJfFur6dqH7tRfqZDUuK2E0dZWzcWja9GpQ9ud
	OoTW0D8NL0I3cc7x8Hi/pZeNrb+JCKAm4Vc93dKanV6I/jLxwZYAxwxtn+vxyyzRnZE
	OWjXT1I8JlsBOjlvXrTb6QX5nembZOb9PegP0DXM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bc2a1c73-14de7d87-9878-454c-bb29-1bb3e43f73fd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 240e733763aa26c07914e52adc1bc4d59059db0ebe7fe299df12e495f5f0e84c
Date: Sat, 20 Aug 2022 16:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661014252
