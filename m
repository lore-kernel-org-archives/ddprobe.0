Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 598BD7A
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 03:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659066052;
	h=To:Subject:From:Message-Id:Date;
	bh=Kr7n4XZ1cZIWjv97pl5FFoi8SW1WZH6qYuCXrvqcmEo=;
	b=ZnESMEtWQGQmsARrExABZaF9WmNtembtSVJhBG6n7g22Kkrf5X6SVM8XQcChHFH0
	qmi3Jx7NWvYhiLoV+KsdrBjGhr2a52tDr7AiTwNYKD7bHG3D8nRlRKu1r8x+f4FHHWp
	bH7LJERb1LVqiY62YQa4cTZ4PaxfiFDWopM4ACT4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659066052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Kr7n4XZ1cZIWjv97pl5FFoi8SW1WZH6qYuCXrvqcmEo=;
	b=FC0ut+0IX8CzrVcxje1b9Ar88ci+ME8UUaSx5F9xptUQnLj03JXegCy/qkzig6u5
	JUKA/u0W1821C2lpob/q/EzydCVzZ5Usa5Ew+S80bEua8nJRq5qnVg+yRvtgqdKns0c
	YOvXdQzm0o+Xt09XAzeEPfTm5w+H/l1bHWiCtX7U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182480aefb0-ad91af34-6fa6-496b-a9cb-80f974ba4e59-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1a18e4dd728a6a054cab9e183071113096d1d31daa799f9f65c1bff73e62f3fb
Date: Fri, 29 Jul 2022 03:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659066052
