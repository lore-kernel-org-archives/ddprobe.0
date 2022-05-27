Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 319797C
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 05:25:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653629099;
	h=To:Subject:From:Message-Id:Date;
	bh=RX08zBbaDlqshcsKaZ+S13CTYRA3lK1SW3UOy2YuaeM=;
	b=brbm6ExJvSmxZ8w5+fh1Tzz+8ifSeXaSHHdy0d+r0JbmLVUXvyCFnLtTWPoiMRGS
	j70YH+30BXQQ7puaPKTKPOigVMr0h+9lLDjk/2p1E1IJMwbjPmsNMt7wjH3sa1iIS2l
	QOMLZFtaxrgCmvlvUlVVfUBmGhMR1YN0mWQycTvE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653629099;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RX08zBbaDlqshcsKaZ+S13CTYRA3lK1SW3UOy2YuaeM=;
	b=aP8pzGCxxvoyz/2t0ZY9k1TnkDoVZ5Isg+jMDL2qyLB1bUZ3CFeSrnioWknFuwkx
	J97K8DwWn+89AHHbUXjLh8mOr3f8jKB8jsZYgylMoo1JzDxX0sydo8pNbgwN38rpyxj
	kS5H1W7pyjOtqJj5qVwpDyTNm2mOqEy5HpE9rFPQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018103f99d1c-9991eae5-2bda-4fd0-ba49-71d32356eda2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3402c0eb35e7a0a08e3b6a36bcd5af6a4a28d816e1a2d7c7d7671414773c107b
Date: Fri, 27 May 2022 05:24:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653629099
