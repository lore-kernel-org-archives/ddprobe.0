Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C76233E0
	for <ddprobe@lists.linux.dev>; Thu,  5 May 2022 19:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651779238;
	h=To:Subject:From:Message-Id:Date;
	bh=9uH6oSpoh4Do3rxGrciINDtQzPnzIhMFlQauhJXNqiw=;
	b=SfJeMN650EBrO8rLIhuUYbfmyemdnChB+Wrweho9LIf5DXVmcMgzbAHhlIcWGIFT
	0eakdTFcfNJALip874DdTccxuGePFkbFBClyq2FxzlY1DJ6qbyA7zT0QEcRsqu6br9x
	gqY4K+A5Mw+EH0zN6fnaFh9fS7kuki38cOXxmFys=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651779238;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9uH6oSpoh4Do3rxGrciINDtQzPnzIhMFlQauhJXNqiw=;
	b=ax3kj03C6cSEVjM7G77wKEqtGGOtV6XzjrxYV07D3PVMdIF3krawmA8dcMVyaNpL
	uAH+lTpKwuKftKTbCUskXWot2e4ELTwuEuLQleMAkJcwpUTM6+J4xhFbXWBvMNrSskb
	poGi3uPGF1pufQ0F/0OJPyZGmnl2xRMUwKVYmlPc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018095b6f982-cecd0959-7998-4c4d-a54f-957605dc1cbb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 03de87a9e3bf28a66f20e4206ea3b3ff030b89f406f120d1820814cab729c941
Date: Thu, 5 May 2022 19:33:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.05-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651779238
