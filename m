Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F06F5386
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 21:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660600252;
	h=To:Subject:From:Message-Id:Date;
	bh=VFPSNjg/j08wpEpB+0tfjG4VureiomLsKbWhqQW3G9E=;
	b=Eoe9S8uQKtaksIWsDV8HCNesMyjBouLCVpGCieoaogiug/j6c8Hsl0ftIdFvF6VV
	zK3PTSmdN11XFbrlqgTwotxO4S9oPBviVWGMwWyt1tUqbrqzXfrEWriZ6KnbQaauQZN
	ebhMcxKMa5uwiC2u+u4ErWmRYTfvFf/c0wyRP7Po=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660600252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VFPSNjg/j08wpEpB+0tfjG4VureiomLsKbWhqQW3G9E=;
	b=ZAJj2zsp5RNzd0NJg74HRawc4qJGczmj31mIWNl6ZexWihrElNNoej/7dsBbZS+n
	wT9Fi8HyxHmrwfk1/BiTfyD1zXLwXRFfdmmQQmGTTWyZ/L/y9gyVhtAsQ2lcHTvTsbC
	lEaVGSBJbXulf+qTpwY7+KEJgTwEnfdacrU83Ipg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a37cf8a9-2a7657be-d9ca-48d1-8782-7d69f5563525-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ed1ebe0d530410cffeb27a36f176e2e95f6deadcf9ce9062d5a7dbf542f21646
Date: Mon, 15 Aug 2022 21:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660600252
