Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 148687A
	for <ddprobe@lists.linux.dev>; Sun, 29 May 2022 07:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653810299;
	h=To:Subject:From:Message-Id:Date;
	bh=bNdUYPN8UOT3KYML5D6AFR/74ATfFAoks+L7UV0O/7M=;
	b=E+vJtqSlbYcS7LpAwR+zPONO10lbVKFYZV2BndowgTkwPR7VdPP1Ra4PJfHbeg7X
	rRLchdN92NPAyC68cJkhhOdddqX60NTpdItT29AmxSeMG4nfWhWlPTBBbelamo93Ke6
	c+Cpb7BiejrBsDFRYRSm4eTyag/bCILe37dt8pXs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653810299;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bNdUYPN8UOT3KYML5D6AFR/74ATfFAoks+L7UV0O/7M=;
	b=FQv54bMJlTtsiMUh/DdZjcldcrCTYpNy5C6sQBaqag9eD5HIG7YnUUSlb6oBBaSr
	7mKcWp4gM9nlaJeyDsK0tRZ9siqS8T9v+53awDE+YXpus2dnZB72LTkh75RqU/8spbH
	FTHSLpoTntmSS1z1Zt0ClNfwfrBSXMrYMDo/iAsQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810ec681a6-3607680b-fe37-4816-be15-367b7b032593-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ca890f4a1c26fb71e5a3d006e7d79ca47cbbb9a5c5e4ec59432293ffae355d42
Date: Sun, 29 May 2022 07:44:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.29-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653810299
