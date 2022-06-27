Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37E337A
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 05:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656308212;
	h=To:Subject:From:Message-Id:Date;
	bh=mPfw7Zz8fwKy0BIxZjLUw0wXbUqLzIhg9uASR0f402o=;
	b=B7LCSThdTMLuEBAjcYQuXTuUbyivSk9SGRr6c0ZjyrUQEnBA83aAfMOy/SBzbUl/
	gvRThMs+FCpTLpGHycLkvpgiJHKtexVWmITpnALhqJNNVVHd6IAJrLE4p2ioRdpwo9a
	ULLOps3XOV0YXuAvUwjJGa7zAf/Jfjnmrylm3ugY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656308212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mPfw7Zz8fwKy0BIxZjLUw0wXbUqLzIhg9uASR0f402o=;
	b=Hrys+05uJYXYsZ+4ohKJ9y7CvW5x14UpaYnFlH5ody8vcrdrMLsVOvDYV64YdbIk
	KOGlvxR2gy0hm+DxoaFW0Xr20vyibJMA9jqP7ur+mFdukl/kKsacRu+GkXn/+zgVgIZ
	efsFb5YYeLbWi3KiQUtJUwmr0s+UL22njStsUHzQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a3a9a277-8ca53c57-e080-41d8-ab91-3481e0852d02-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 09cb50d98138101789a55df74438863b23933d084973cd475c44555cf33b63b5
Date: Mon, 27 Jun 2022 05:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656308212
