Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A5992585
	for <ddprobe@lists.linux.dev>; Thu,  4 Aug 2022 14:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659624652;
	h=To:Subject:From:Message-Id:Date;
	bh=qnCJegnxIlo0wjEsx5+nQJhNKZSe/65rFxcIew7cXJM=;
	b=NjRjk950OpaHXgvRBZqzVveMsegOqHG8GZw1YjG7jYggCVWXFkeJ3VKX6eXZA/Vo
	+Xq2FMZd2SiZylKz6oHkJV1KH2TecNVYqf33Q/PeqdaQjiJNVXg7p+GAXjGKQEHVTRC
	W1iY573Ii7k5rVy7W4poITV8nIwX/gSA2fV3keo0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659624652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qnCJegnxIlo0wjEsx5+nQJhNKZSe/65rFxcIew7cXJM=;
	b=Hw4/Jsk+gNoXy6IW4kaezHB2bg1tXjkefRtv81r+eMO5peIvQHg3rcfijZEhvZ7E
	YJHzpQPV8PvO0Es4Y7KTts5jE+qGX6ILvcHsrr1GBkrGCh0Yo8UIc0Mvu/vLMy2obGn
	QVl1iD8U0j6z0dCSD5yXSRFZSR8pkjU6KlRvOtr4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018269567f39-a14bd45e-9f5e-4de1-adc4-1064995dd935-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e23f70773fa07b09cf946b031ecb147b81d7003db3a1ace275a508745c69c207
Date: Thu, 4 Aug 2022 14:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.04-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659624652
