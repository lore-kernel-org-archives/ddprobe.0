Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 574C863E
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 17:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647884484;
	h=To:Subject:From:Message-Id:Date;
	bh=fEcfeTkR/lptgxBOXVUSRWT25YOGBxmjnDvkToVbIk8=;
	b=ZNkWX2/YCLZLDw11eK7msYHWE8OnK58GRWwSC9bSE+em5fgaG8YIY6Cd+1a8WZzA
	l+siq9KH7Q8WmxeMdesPGcbzRMNydCAQMnYBjrhp3QFQmpiICEOuqmwdYaClgovihiK
	482Nlqjv1P2FFs0aSCCw5lM/5gS0YdmHK1FkDkqc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647884484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fEcfeTkR/lptgxBOXVUSRWT25YOGBxmjnDvkToVbIk8=;
	b=gRf/FvTZuPcTqpIo4+l+TQxeiglvs8RBytoOXqRsi1MRxS2YvE3USQHHyIg237/W
	LWqcGTEOXhAGnsam+fxbh5+5Uysy6Qlvxk2M1rQe+W9OesLIvYvfwkHurw1iap0Udud
	N1C1eHalesG8ioHABddRXswNfBtrIhEr5LkNnU9w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fad91c0ba-2bd18923-3a00-4437-b204-bbd423fa5a40-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2fd8012d399ceed1f68ef790d166d236d1352640421189b2b80c847861933344
Date: Mon, 21 Mar 2022 17:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647884484
