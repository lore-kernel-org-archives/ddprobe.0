Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25AFD256E
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 23:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652485679;
	h=To:Subject:From:Message-Id:Date;
	bh=6T9CGF2y9pFrAOUHqsv5qkc54H1SjOD78TN+JxU9/vo=;
	b=RKecw2v9CH6VbRhju6LK5yGO1RlNpSaNkM7384f4rtBn2X3e1TOpltHpalze2bGF
	ZY4g04y3Le7xwHxd5s+4z/rFrLWTok3XJ9ttfSWfMp3ejkbL15Zl1FMF+XKQ9rQtNlC
	AHqpRrE3VNmnceQblDXQq9j49gTragUTQmX/HZX0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652485679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6T9CGF2y9pFrAOUHqsv5qkc54H1SjOD78TN+JxU9/vo=;
	b=ETQR+bAbr3vegD5XJrLm2wznY75CXjxKtXC/yd3ZyOULlvJt96HQXFYzYKy4jbPM
	2J5cmLbK7DlmxaAAYQUvrVPE8ItdqFpQIgNxmxAlXUdZeM8bFitCHPahdZ2XQgz9QFc
	LRDvtrjHr7M9YCoRTXeEQ1NOhzzG+5ZlQybczNqg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bfd268e9-be881d4a-ce00-48ac-890a-a875578ee388-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 96c487e4eaaa9b38e8cf765841c0757475f2b3d4f00daf2a450d2efd11378eac
Date: Fri, 13 May 2022 23:47:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652485679
