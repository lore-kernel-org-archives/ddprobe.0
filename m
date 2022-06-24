Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6DBB3FE0
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 21:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656106013;
	h=To:Subject:From:Message-Id:Date;
	bh=JfWrnmUesNDUboIXbJgjQlFSRaeDiff2tWApEX3stXo=;
	b=gG3nHgrwTRurU5+6sr3Z5rjCmLA2yqd2pfH6D8P5k+BMMDMqeKZsz+aFUi5B9DR1
	EVBml69E2+ec0Di+BNIA7t3VD21WKMceHNsiBMePnPQJcMSCFzPxQmC4ay0uCmgPJPw
	7i00Pdu/rhhc4yfrA7VV65/k2mFwIt1ZMydcXx3E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656106013;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JfWrnmUesNDUboIXbJgjQlFSRaeDiff2tWApEX3stXo=;
	b=X0eZB/MSZKzZnM46MUE1/6PTbbW8NH2OQIrhHlrddUg0gOEs5yaTjRhFahoyBkGA
	J8hUn+4bZHHnuTKm4ePcKKxxgCPab+yTVF1qZfIGxD3bOwnKY6VvdA3/oYG4fRRvDyj
	W3+3FUEEqJYQXxrhbbBrz2lveGdokbvqg+6HKVgA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181979c4eb9-2a13fb98-b712-428a-9256-e1c6bae7879d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c2997415fd6af165fad71c620ac4d8196ce8d2f88a3ae514ebdc6fa21139afcc
Date: Fri, 24 Jun 2022 21:26:53 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656106012
