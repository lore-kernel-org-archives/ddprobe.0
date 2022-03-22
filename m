Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 990FD7A
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 01:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647912084;
	h=To:Subject:From:Message-Id:Date;
	bh=XYwFbIAUMRzQvOjN4bP7B/MSd+/EB6XEPFPaxSCffQY=;
	b=PaU4IHhSp+mTvlX+QUwJ7lMNZZ7plTRK9vdRdVV8XShFYLV7Qvc7g3GntfVn7tPo
	uCfLvs4b9Kij5M3YkyjEZEA9ZDuFqBehGHCHybC+5bOXo6gjz/CvT6RdqRC2uXEHExt
	WcGu1TIoLBHNV1P9FX2mbyM2SNixyxldNUZFDBDo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647912084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XYwFbIAUMRzQvOjN4bP7B/MSd+/EB6XEPFPaxSCffQY=;
	b=M1srfU6SrVLRH28W0Iktmzspv2U6ObogMXrMeXw5fMZEjP7OQdM/jBwdJRQ8KGHm
	RhksMwjPuCSOgQFlsV/v1qmjQGQM82Krg1HSxYyRfAlX8WNrE89W1ARM8u8U9Cgc7RK
	Gk9ZUJp7GM37NduUTEmE05n4dP2MANCYn2jD6FbU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017faf36e50b-6369c8ee-6a7b-4b62-8fba-1b5a3ea69fc3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6ca8c23ad9a48eaa3ac0323af224abb4058654901bf5ce60a75078d9e4661ce2
Date: Tue, 22 Mar 2022 01:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647912084
