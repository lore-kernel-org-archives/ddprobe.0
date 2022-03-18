Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B47BD6444
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 23:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647645084;
	h=To:Subject:From:Message-Id:Date;
	bh=wZzDbkaFEw33abNZOGx0PvwU6AiZCO2BsRmEgvKY3mY=;
	b=CfmXjNcTzGX0JW1ynLSi4Q2s7Mp0u4VuKibYBAq7QEXEHXMR+4nB7W3MfMvvJCkm
	6jtNLdtDhCrA2Kvy+AI3+ulXOudmVSmtGhZSJtrdCXKDxZaTQPc8LlHxjpryYHD/0Du
	0hl4wrjr2O8BSFRpJ0NwYomnX20NaOy09FMj3Mfk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647645084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wZzDbkaFEw33abNZOGx0PvwU6AiZCO2BsRmEgvKY3mY=;
	b=NnxZJRPXWVFQ6hsfTnVbeLDOB2ovUWketZIhCSf7Y1TdkuXuLJHzLou7gHPgvSNu
	iXi40hBL81nEkjdHQ+I+4B6pqoUQeaRo3Y3ldMYoodllkackBtexhc8NfkDrontVB/m
	HUwlnoUJticfi5go0vKPKCKvtxs5Ut6jdGG4Ldb4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9f4ccc55-54d7e708-45a1-4c14-9436-bc122c14b966-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7039672efc6a21106a9ebb2d389240ea7bfb366b2addf9603099abfa864842c0
Date: Fri, 18 Mar 2022 23:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647645084
