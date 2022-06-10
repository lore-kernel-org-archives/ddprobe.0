Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1902A7A
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 08:01:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654848059;
	h=To:Subject:From:Message-Id:Date;
	bh=H4ut7Olme5RA8YXaMAIiGP61Bz8NGBcrVnAxU8He3Pc=;
	b=EXINfI+AQCT+PENP//mt0gI83d8SBSxIA5/e2WWsG4VfAyMDzz/lSzFQdRDkM+Ww
	qcqEhzk7Gti7UpDypXn25UEjpMj707xmPg5SgcQl2lcrPWbb7wmN4Ko+7Q8K/P7zXu1
	oCNgSYgbvkCY7qrCl2E8OQbzs/Jpo3QPC7fnF924=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654848059;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=H4ut7Olme5RA8YXaMAIiGP61Bz8NGBcrVnAxU8He3Pc=;
	b=eOSlcWFOp7CjWWYWsh5o0wryYh0KZsmpZHvTHF5mZBxmrYmVS9lwHdmz9KPEkcAw
	oCUXipEcpKMpVmUXLrTMP2jvxB1nnhwGARS/Jc5jxdpZWwjA/+C8hMLXI/xwFbRq28a
	Wz4TMSAUcZ++MZf8zBp1atM/wBgEauT5W9nV+oj4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814ca1779f-b8bcc684-65d9-4cab-a69a-5d613fa4b1ef-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7c552d7fb89a283b637d381b94dd69fa7b06a2e832774f96bcd1535c2855c4c3
Date: Fri, 10 Jun 2022 08:00:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654848059
