Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0656829A1
	for <ddprobe@lists.linux.dev>; Fri,  6 May 2022 17:47:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651859278;
	h=To:Subject:From:Message-Id:Date;
	bh=xTGDaZPrmve1aHyuZ6Igw8ydMeX9Iuo6EM+9drEbqdg=;
	b=Bq9E3TR1Q4OsvVprZ9a6gmFVWnRG0uZeTq2rgANMDPzKYjIbGXuBNpZUZl6rjlaX
	A9fevjsxiwFyD8WmxgD2+YLJEXR/TivuVM++D/UMQLCPpg4kWUIYrM1MnVnS8SDW3nz
	/piV4yHEDXtgWdQtmNnYq3N0PaJ/mtaC/WjpiIUI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651859278;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xTGDaZPrmve1aHyuZ6Igw8ydMeX9Iuo6EM+9drEbqdg=;
	b=j4vLJ0EPGOSSQPh7H7wvCBuKlYvEMewLgS/Vb6thcsAoRP96al87qAJqA3ZopRNp
	oUZwVaVMtHvZ5sB6lzzUbjbWi1oC53bHuc1bddfw1GqKZzlaap/8/47Eb3cJvkF8Au8
	xER05gfPnipOQsJpmILGgg0yhOdffFMh1eRGJzxU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101809a7c49c0-580a8d8c-4966-41ff-9dac-740b2ed0af2d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 44b3319cfac55f2593ac4a393cf7f634b024747dac13638f8cf771e0f191c405
Date: Fri, 6 May 2022 17:47:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.06-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651859278
