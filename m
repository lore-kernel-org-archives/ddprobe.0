Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2430C5391
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 14:50:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660661454;
	h=To:Subject:From:Message-Id:Date;
	bh=+MPiducFyGI9fNyCpdF9DMag9tqJ1sCBKQE+KSnapKc=;
	b=ZfPwQbCv5htLYWwd2b6zevdxejbUoXJNjc0RuRYsdtIRnvHRkkYMi+JI24rPut6l
	U6OpAelf+2q7cJb7OEcdtq3H+cWWYBd+n/sRp9KhY4SVCGRK+GvIW9oS163+EMXuiKL
	1ZlHIVP9ik3XIAMz/qVqMnQZ6LTZNqGTc/uKJ4qM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660661454;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+MPiducFyGI9fNyCpdF9DMag9tqJ1sCBKQE+KSnapKc=;
	b=cnEiAYlAZfjtvKr6leohs2wGOF6jp+Iw0BfTrFh8P4om9ZVF7qDVK4mq53yhYmop
	K92WMjJmjl/KbaH6XT43LszhlfHdfGMynv3uti66RK2xWtMr5Zu8LmR1FzGpOY36nT0
	qz1ZsUy0yBT0DSvKHePeGtMErFKA69HD4d6xNZqM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a722cedd-3c276efe-cf80-44bf-94cf-201d9c43b738-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cc97b41f3f9d81d6480b7ebb929d76d97bf19acb7689d88ad70f85ce6d87e46b
Date: Tue, 16 Aug 2022 14:50:54 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660661452
