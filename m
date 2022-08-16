Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CCCD1383
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 01:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660612852;
	h=To:Subject:From:Message-Id:Date;
	bh=SnN+tLRFWgCcqP1bF2Y/tleE20dOLNGZEArzcOTGavo=;
	b=grC7I8WInSXWQ2/biNocm02cA24dEqZHiDbw5MYc5YyDCAZDmeWvMoW6bs1ceMQH
	BsrF7ZG7f1VCSSS8dg3ncGVxqHDXbU7HDQhEeViNggoYw8za908HpgT6PygfAzWbao7
	V/pTPpGaEoTnR7YH1pvgGtOPCcqMwo5GVOBPv1iM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660612852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SnN+tLRFWgCcqP1bF2Y/tleE20dOLNGZEArzcOTGavo=;
	b=dY2Ainf/3wakPNYgj4MhkrUdXoyVvu85MSNlr7OPLe2VYl5yjMYMgUDCfqEuGBUE
	UGo38rM0PR7oxP1LMY8Lw4S+oRSCy539hl+ohObHOAEz6n3hNcFuzmqvArc9pT419Bo
	xVA6u7lRlRf65n8RF1fBSZZ94vwrFiUrqFU4WKLE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a43d3b62-108d8a5d-c482-4679-9505-ac55b08c99a1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7135c85f6707bea255e65b4236a456bde5012484799008e229b0b97fd6ae5e73
Date: Tue, 16 Aug 2022 01:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660612852
