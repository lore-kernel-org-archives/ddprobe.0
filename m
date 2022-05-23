Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB42736D
	for <ddprobe@lists.linux.dev>; Mon, 23 May 2022 04:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653279599;
	h=To:Subject:From:Message-Id:Date;
	bh=LItbb5BcpCaiuZ+iHvyNKamNwZnG7hL6NRM0ByGYrSk=;
	b=kpMlN5o7+xyWcxXtkej3rD8aUNCR0PmOaFdhbZsI5Km+bmfJyoPHCnYsUACemGRK
	o1KZWqOHjp2uQjE0NZ1FK+i6AsYHC0VB2h3zW4NVYvB3gmWU7ezANmc4EQIZH3eSUx3
	Q8sgxkhzqr0/COeHOnOG6uy8rqjE/HELKpcDRvbY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653279599;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LItbb5BcpCaiuZ+iHvyNKamNwZnG7hL6NRM0ByGYrSk=;
	b=YF/Pd+N7lOA4MgrxFp6Gf7z8mRBrwke8ih5Jvo5X80HsCQZxQdDwwWrjM6qV+kMN
	fI3ZMeD/QkyvKpW5tuMhXjR9IrxRkRrMhLAMi5v+YPWdPVpEyNscO9AWcAGCErOcO12
	ojmzVacqa+mx1Zs5gkOrRyNdTdknI3bTCDgMre8g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ef24aac6-6e4c67e2-ec36-43a3-9bbc-c39066bd27b4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6f3e1bada0ac051a4126179b84351554ed670bc431decb0ba5f2a4c27e177c7c
Date: Mon, 23 May 2022 04:19:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.23-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653279599
