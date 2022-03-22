Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70144A31
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 09:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647940285;
	h=To:Subject:From:Message-Id:Date;
	bh=a4y9EvdzPyUlH2wlGU+aBJ5LIOr/upxaPKcWtF2ScOE=;
	b=JZd17y97Sr4PpXT09GiVWYzHo+NUNkjjsc4krN/pGNnn6MPhpNAgsVK+TKd+KBQE
	ve0ctxGkJdlZTRbyk1UYjQ3rosTpZwtwQSABL5W+TtqXa6q6NsIYBMB/lh6fis7IUAr
	rTpchH1zbh270b+BKbjqrVtq634LdVETmkc5nz+E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647940285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=a4y9EvdzPyUlH2wlGU+aBJ5LIOr/upxaPKcWtF2ScOE=;
	b=Ov7X/rs9ruAv/zuAbb6EF7KG4VyATVo31N1SD458P2LGAXNNcV0QiYbR3O43jAxR
	HPQyMCeI+h9VaBRqzshKe5dKaVKxcB5wbplsHvEBUFzAuVYrxY4HM/IZ8Jbahabgja0
	F8oLU8vLQzHr2iMNoC3jWNp5PBHOQApBZRtCleag=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb0e531b4-38dabd56-f38c-4e38-9c1c-2e2ed89c6f7d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e729dcf0936afcefb52f0f574384edcd4f4b090127095151c1793af8972bb9a7
Date: Tue, 22 Mar 2022 09:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647940284
