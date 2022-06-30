Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23E2C7B
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 11:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656588412;
	h=To:Subject:From:Message-Id:Date;
	bh=baqTSvAX+/6RW6jQ87c/9sPoirpZQWff1HtbFhY0/rE=;
	b=HNY9LDxf/B62Ay5lJLhhc0B7RhUWujebWi357D+xhQuJCb7XsI7bmPDVUu7BTmYR
	kk91QGYCR46uUdor2881Gg0PRJx5oRouS8/xoVp8NggpyhfhakXebZZb+lncZ36YiyR
	oFmSg0tslEX7yKEIGLUtqXc0Mg+/QQ9gza5+A18Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656588412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=baqTSvAX+/6RW6jQ87c/9sPoirpZQWff1HtbFhY0/rE=;
	b=Sa7+ej7mX3FzxyBe3OSRRQKjdF00VkuUMu/ozZ3cjJqT+e9jMBCOdJ+I3OKQ/JOa
	D5si5HYskcTHOijzM2JU/APKKlE9hEF0uzzeRuj3EP0v09gZhKxjZApSskYqJNdgCi7
	eY/bmzUqRS1I4whz+zeHlVLqnRB4dGT8NGRnKsU0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b45d25b2-0d0f5603-005f-4bf1-92fd-82206a9aee1f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 76818ce35f4219e0089636243738d7892afc09e40690d5166412105faf7ab900
Date: Thu, 30 Jun 2022 11:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656588412
