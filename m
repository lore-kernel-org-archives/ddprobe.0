Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77CBF7F4
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 10:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661163052;
	h=To:Subject:From:Message-Id:Date;
	bh=c8f1VVJFvv5XbJ9grV3UHiOFMb9ya8aaDGFLvg3SyrA=;
	b=TBn4PGpMoObNlWPJHj0XVbkANhfshfGPPr2pkvJIz/gE58Svl5mrDerUpSBa04Fl
	BNwccJ1T1evO4bAacHf0zZMFxkJa6x9AGqmh9PlUqHLdbSZDEWDKB80QHFVKtORu2p+
	J82EUViHz9kkMLy1K4fFeG5ztePZ1lv0M0ibsjaM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661163052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=c8f1VVJFvv5XbJ9grV3UHiOFMb9ya8aaDGFLvg3SyrA=;
	b=He3tjPM+D9SIWwW4h7dwVoWTl092tWWZxJlaHfgpSybJwQ97QRVeedu4LIJ7dVd/
	MVDFVBOk8PVj23w+/KLKvwMHzYVAMOQZRMJ0CVjjeUVeRtHyp79Dc6M55+QYre0g9s9
	hlNUv7GfNz474CwMoNg/wZdnaoo1I7aBtCRVyoIk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c5089df0-ddfdc76c-8085-4774-936c-80e67a5c1389-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1fea114892b2110ee169a0fefc7156962ceca80bbcf941055c9f3572a9a2bb2b
Date: Mon, 22 Aug 2022 10:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661163052
