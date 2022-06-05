Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF9C64688
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 01:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654393859;
	h=To:Subject:From:Message-Id:Date;
	bh=LYnAPlL83h1pUk+ORZsSFfpmpRcLxJBstrqnEx7zVjM=;
	b=Yewh7wsA9ABT70884kWDQSXKULPMzUYKdxfdkS6JjtOFhfZNjWzO0sB4eiMIcFFF
	Dt9Uv3a68RcYHlpFio42C5WO7X+ttNtmNNHlW4AzgiAO6A/IChMAcJLT9bnF13IxJVx
	/bp3agaCbY1zzs+frBm4IPXCsgRwH7pv0qqfC8ls=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654393859;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LYnAPlL83h1pUk+ORZsSFfpmpRcLxJBstrqnEx7zVjM=;
	b=GF+avmCaSXloTbKmnr9qdhlEYnzafj292wccqh5PSnezDjFIqcJBTQcTMcrkXhaB
	O7swkNqIdVKDRgnufyCeeV6k5QSuru5ICpty3F3KNA12whLFIksEgXV+MheEtcZu/BL
	6SFT6WoXMtuUS2WHva/wL1peedv7gfWQyUL9BlIc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181318eeccf-eab23c5a-9a34-4100-a291-209796069f7d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7f385476853061a5ebacab86ba530cfd563b8dea4058056ddfa5ca0d3e404dba
Date: Sun, 5 Jun 2022 01:50:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654393859
