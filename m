Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5B107B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 11:34:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655552099;
	h=To:Subject:From:Message-Id:Date;
	bh=wIBPgtWxSMdVqlSbgmbooUkiJXUWDP3bEoPqCkKlyEw=;
	b=b1CSVjVYEmkGyFp8zYO78sj9qJgWx5r5738/wdFgzDquNAsj0kSwSi4j1+/9KAy8
	NTfDC20I3/NsQTOlvv1oPOiGcHRo4uOe/ljWQG7PlnYiSZDnH0Fgwl6RPIPj6cafiwy
	Ai3wn9kb7jI0HAkLpWVAFijpcazT5OLHhgNVCikw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655552099;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wIBPgtWxSMdVqlSbgmbooUkiJXUWDP3bEoPqCkKlyEw=;
	b=AXrSI6AIf7A0w4znc/U0rPs1xzESDv4chhSMztM054MKQ56hfr+CGjNBcFqf47B9
	CHlkYTz23c4dP1PbuqRfLBU8nOol+ODmtR1WogxPrCoeY0GtTVri4UtS9K6Faw2e61Y
	n40O6Of0d9TrkGPFVluzrNxfVrUt0c/GFp81z46Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018176984370-ab459eb0-8ab5-43b8-9aba-19aa9e1c8877-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 381bdbeb5385d89a470151fa1adc2263592345f497b7c514b4e432df7a4ca644
Date: Sat, 18 Jun 2022 11:34:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655552099
