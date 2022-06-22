Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5114A111B
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 21:10:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655932199;
	h=To:Subject:From:Message-Id:Date;
	bh=jBs8WtpZncY87t+IsAAJxWi0wjAmyT/+KUr94s8J2wc=;
	b=F4ITKlFvZ6LEz5BiVMaAUiHi23hSxuC1JjfB3tH5oyBgMyo0tWxKkwM4lJIryrPQ
	qtn30jNSjAQfFfEYJgFjoyOXE0KsXBP2TKJv5LaBDlwLoTcfwMyZX2mpjvvX2B652he
	efTo+kjPS1xOQM7EaJDzJ/ahArKThMnoN5wC1Kek=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655932199;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jBs8WtpZncY87t+IsAAJxWi0wjAmyT/+KUr94s8J2wc=;
	b=Sj5eEHcjOwba06Lmrok+T8d6SKZcrqD6bit5CzNLPpknqKGIDzKYX4TX5yb/7UWS
	1zKPFkYvXMbwZSITpdeKB+2U5L/U4gGdtsGyBWoaBV2vsxWCIM3Y/dTYMTiy698g3uQ
	ADcH9CPfNGZ3K0RwnIqsM72kLRu9fwFW7NIdOkIw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818d4021a1-bdd0cbb2-11cf-46d5-9b4e-9dbe30b21c7a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f5658e76f3aa5c82206738dd6f8e3b4501bb0ef08bfbd8fa8357ae1784edea8b
Date: Wed, 22 Jun 2022 21:09:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655932199
