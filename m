Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 800877C
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 04:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659672053;
	h=To:Subject:From:Message-Id:Date;
	bh=Abj9/6klunoLtYEfkmeJfe8cwNK2BihqUtIN3052EjY=;
	b=Ec5NFSqM+wIohdgrwJ5AYT+anVGKqDCbi3Bo3GKMBKG4dszSfKzUdu2ZdokVLzMQ
	PILb86v/eNM8U2n1ehpShfYY764yVTXLz5zQYCsNx99qrOqlU2bOb9CRxLtNShievGW
	NHaf4RGR2bUP0knAl+rSWq9NeFYkOPxt3iOO1dqg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659672053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Abj9/6klunoLtYEfkmeJfe8cwNK2BihqUtIN3052EjY=;
	b=GzQ1KGJSLbmnPvsrxQCSBQNXkBUSzwQO5HxHylM4MmlSoBdSoNWFYcf76ORjoYo8
	CdIDc7xwQZntAHpxbhyC6XxwCNRbyKDZ7sMcuecki0AD8DtQP7IhmmY6c/5k8ekmBI/
	MQKlwiXvPEcvOgAwhbqjukmpKOx2cXjTMG+t1SBY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826c29c374-e96d53fe-2318-485a-9e56-e28c38166977-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a1234f25f0a9bea2ea31536817f897b92df7c315f0f75ec9e52e266151a614e8
Date: Fri, 5 Aug 2022 04:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659672052
