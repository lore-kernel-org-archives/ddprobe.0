Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABE725394
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 23:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647644485;
	h=To:Subject:From:Message-Id:Date;
	bh=UCdSkclcOMjWS9Y/QFtdG/cLDQ6WMGQ3wlOl+QVB5WY=;
	b=atdU06JGKtqSLJHUQM5rnc3UvxTivKqMRr26doHW82W/mzjn9gKHshK4DmhAFHrd
	CBafwPe1F+57wJB+M8zIcDK3QFgZaO8xxZ2wzmEx0aUOb3lKbPhVJjoTIHvIVOpn8Ko
	OEK+rBqpH0wd1shgmgUnalUoDNrgHOaPPvsjZBH0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647644485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UCdSkclcOMjWS9Y/QFtdG/cLDQ6WMGQ3wlOl+QVB5WY=;
	b=UHmd2zZPmqsQVjGf9h2Gus4StyZjAD5qnSXw5DbwttTyVZ+FWheDp1283bV9UTkq
	39TMWzd8QoPd71uDqZGO5wf2RdtcgRnjxUSkuTfxdInCkQsG3HTfsSUcUAOYX2/IRvU
	GRjGoYHa0YxqWOMeAv1aRtAGUqcnR6ts90UUN9xQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9f43a499-c8f49afa-f9ba-46af-885d-36a1e8ba3a77-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7bb4ac68c63de2e1eb3f1b061fb179eb2b7abe6b82f39942fc0431aa16c2df0f
Date: Fri, 18 Mar 2022 23:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647644484
