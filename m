Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EACA33CE
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 23:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647817584;
	h=To:Subject:From:Message-Id:Date;
	bh=gYP6EWnohlGozVM4vrqRU0HnQ7NpRREYvfhhLSmjM70=;
	b=gdXTwGg+PIqwxo2J1iBE7jWxrjBrNhuOx2Eala3XLfuA3LAPEre6Cnzxcfqywcg+
	mIr1m6xCkX62Ci3pw9A15hb/L4hg/FwXDmNVsa+4R9D5IXWR+ajIA46mFGGq5bjSJw8
	huSSwuwcND3pgy0luc8v8BhTmOZePQllUlVJmUsc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647817584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gYP6EWnohlGozVM4vrqRU0HnQ7NpRREYvfhhLSmjM70=;
	b=MbxUkaWiBVsHGE5bIcATwVEUj5DQKpiUTdhVrdJOrt8vBWLN/33FNpG+YqgjGvUE
	FdWXyZyrYoYkERvtymcJZ+3rLVu7hXipRSQ38iktmSx1pEALitq9Myeq2R4xiMnnO7G
	yszVEcEkjXqSE/FISBgIGzAXBkKqVHx9HTbeWahM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa994f094-c72736ab-bb88-4dca-8dac-c58b9952993c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 159f695b676f9c165c8385b0134d41e820ad7e01e90692410e8da725c6418718
Date: Sun, 20 Mar 2022 23:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647817584
