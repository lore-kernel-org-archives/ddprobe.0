Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 036CB4690
	for <ddprobe@lists.linux.dev>; Thu, 21 Jul 2022 17:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658425012;
	h=To:Subject:From:Message-Id:Date;
	bh=ICPo+SkMC8e6OcuT+sCwkl4K+pPG9eRCXh/C5WwUWgM=;
	b=gZnIscAMLA4bQcI7B8pRQZ66hTvrPJUxV7+DKJfPfL0ywLgStXska4miwZV4yxTk
	Ae5HQmmlCzoM5Tjd3RKY47fqaBUjpDD4eqFXRLnh+/kCRNWWSCeTYFOAFGv83tGXpBn
	CuLTVlNl49tI8D0wko5XUQzBBKycwT07Wk9fAWmY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658425012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ICPo+SkMC8e6OcuT+sCwkl4K+pPG9eRCXh/C5WwUWgM=;
	b=aeufqEqdxsZxig2Iq8DkrkCTbh7kF1lfWVX6R6kcibw8rBSap/3hiyvSLnA3uanp
	NM9dAz9zyxzN4VmeEW4ASdJoxeeN68PH/ef8ADqLLdG2nAgjizwMuUP7k7ckcpnl1He
	21JbMETTIj+GGNfP/eF9xo4O94zpv6aW43a99dWE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018221d57054-c5ce3372-eb9a-4127-985b-60a5a052a5bc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9be3a1b7431a53b2b1c4c1c0b46358c58f722ee539cae7b41a0116c60e58deee
Date: Thu, 21 Jul 2022 17:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.21-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658425012
