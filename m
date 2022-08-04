Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D20B2570
	for <ddprobe@lists.linux.dev>; Thu,  4 Aug 2022 13:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659620452;
	h=To:Subject:From:Message-Id:Date;
	bh=CDfC8sEPnXQMUf0ImF7zJefKZgRvhCwViQyGrxbzLBw=;
	b=DDIVTCezpQw9ScOjTXnaWjUctkdk0jOmRjH+wUGznx+AkdOWe+Uh74AZ/Aw5H38q
	X8TiWGgNnRDmFYPdBmX/iEDSYMs2y023qUqOG2ZGxav7W7fAZJrE/dTPvFvOt+DZfce
	8oe18ouyvayG63cqT2LfJtWGXibrtuNC3iX0+d8s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659620452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CDfC8sEPnXQMUf0ImF7zJefKZgRvhCwViQyGrxbzLBw=;
	b=UxjAlS2G1Lo9rMU5qGSMlrbruPCaiTy3KEkYJR0woTnFRk4wJnqoQv9ITnPm1FKl
	hXt2HIKHQfwh4kj8vLy6lRNbfHCfzAEceddBHe/HSot0pt3JNUOqw5lqDoNNw7MiBjm
	dD4dFmUXzx0xGLFKgUkwjaAYvg7R+lqt22VHL4aU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182691668d1-bcd1db23-9ecd-4af0-9eaa-9de5d04fa539-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d769c8bcf710665818b5e64b16567bf8dc2ae97853306bda621e0a90cba1f5a4
Date: Thu, 4 Aug 2022 13:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.04-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659620452
