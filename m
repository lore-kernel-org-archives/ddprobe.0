Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58B527F6
	for <ddprobe@lists.linux.dev>; Thu,  4 Aug 2022 12:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659616852;
	h=To:Subject:From:Message-Id:Date;
	bh=9qqyPmi8S2l/TvWSnhF415h6EL+S9YiSQGEzsIH9H6k=;
	b=YOvcTpLJVr8CTpzcPyuD0jdHJkjljZ8m9QBqQWuQrIW0WI6PrD7kC4mWd5Q5dLVS
	JZAFwoV8TDql2YOKd7PyFEsrM+rrfV8o+RwRUFHkeFK26VWnpTw648Ke2gtshLsYI59
	BPxTevMTf16BRQZ9MMOCdAOFvzX051B1VvCGUMXc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659616852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9qqyPmi8S2l/TvWSnhF415h6EL+S9YiSQGEzsIH9H6k=;
	b=KE3kDeE5lENjpYKZUsSm0BYx2Rq9hk+yAMQZt6FI5+UeG8xqI741E8kT3/oRuqC5
	a2Axqqnwb2T+QW5+/UtMliGVoyTvojXgjQc8FXfWf24Qv96gm8oyGlN3M/o5uyby+bU
	tlD5WOTvvReCaPs8328xAoTMcBvv5SouQQfPvbHY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018268df7a55-e69b9210-24ae-4043-9197-01213bb4a082-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7e78961a37deec097231a81a6b8d6acf9692980cd7531bd7a2cedeb455d24bc8
Date: Thu, 4 Aug 2022 12:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.04-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659616852
