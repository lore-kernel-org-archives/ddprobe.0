Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1149E538C
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 23:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657927612;
	h=To:Subject:From:Message-Id:Date;
	bh=FmmrLnu6FzQtXXbbq5jiyeD8LplHocZjlKswLygccRE=;
	b=cfglRBTt35e3LHNK1q1ZwaYWnZSsr+I24NkOULzp99weD5132XTm8PZsfvPzn8Xh
	pW0KdS10eLHnpdxoeKhZIMIezUGehcYC5O+4Nw0NKmLlaNOMUsEjoHUcC2v+TQ2RSkA
	Jsp2KmILuNsGtYwrBDItn1KAx0v6u6YoGgIc41JU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657927612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FmmrLnu6FzQtXXbbq5jiyeD8LplHocZjlKswLygccRE=;
	b=aHUYpEqMXqFxmV707aTNr37kMKT2q06Bx5uuflbxJVzLKDDy3t56Lapoe6PT8r37
	WRnvFZv6OCVMckKGDPJis4gMEZhVmeIpBeoMKxGGlfTzDTlv+2UzxfnN7s9HRzyWFcV
	MEA9qDl5jN8AghDP4EBD0V9BDQ548qr9jw5iIVUE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182042fb76f-224ec894-9e41-4e69-a6aa-4f63426cda3f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9a83550466f029f9349335f24592467eb9c519ec8c7a5612f952adfdf216d12e
Date: Fri, 15 Jul 2022 23:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657927612
