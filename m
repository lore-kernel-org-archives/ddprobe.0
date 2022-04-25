Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E9567C
	for <ddprobe@lists.linux.dev>; Mon, 25 Apr 2022 14:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650895438;
	h=To:Subject:From:Message-Id:Date;
	bh=Yu/xXCtiU6qlaMmUc3eiuatx6ROD1UOF/wf3Ttk6VFM=;
	b=AKWlMjngkOqLaXyLCoMBoNIJN0ngsh438PXMDxYwIHa5aVWaGTsuQBxy8XE5Asb3
	D7/QD0X7ANjGmrG10dKUG8gqV37gwi1/uZ266huslxC4X7Vil/2R1J5Vvbf2N2/ZPoS
	bzXP+GDX6WvR6F5rZt98pD9w2jsDDyyyrzPCYRGE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650895438;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Yu/xXCtiU6qlaMmUc3eiuatx6ROD1UOF/wf3Ttk6VFM=;
	b=ISWLKEjowgasLYW1f0/7SqSi2dVuf+viMuZErK6no2pZSlfzDhLD22bDmqdfenOL
	3Rzce16u117oF56kpBmI6ciDpLJdMmH34xofDXnjmO5RBr0rXaEo9t+HhPx0EF5BMY/
	NZAx0ebIawjzOPgskFS25pbSwGb/4aBnALi7ssBU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018061094236-1250274e-a89a-4be6-964d-0d80d139f4f5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0117bbcd2152cc6265880404e471219f2e8d99da1baf4dbabb9a919a75186b99
Date: Mon, 25 Apr 2022 14:03:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650895438
