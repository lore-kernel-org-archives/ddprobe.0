Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E01377C
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 08:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660811453;
	h=To:Subject:From:Message-Id:Date;
	bh=4dkzEHcmuGfNSyg9AhVrs/PQNYu37FH3KksEwP4Bzms=;
	b=i07CC6dHECXoZIzVvKCFSWlJH4jL/VS2C+4poWIzw0LMKnNmyazBAiOr9gnfuiKE
	tkCwkFO5zhS2P715L7LiUiIw95Yo4l2CAFNrocb65lCACSYV3kPjfDhh3J9O8QKgjpd
	ky2vDieDQCQMf0ARzrJGMDG/FBNexv4ZkCd8RLX8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660811453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4dkzEHcmuGfNSyg9AhVrs/PQNYu37FH3KksEwP4Bzms=;
	b=EHwCOthjiENXgZAZ5xvzr9vI+TPwM/xIg4UxyhvO9Kg2r3YkPDm/hbeFtdqfY031
	mFs9abs7n30YFCiSCo92dR55OobtXCM0OXwTqbcOfpzMhkPPCOH3O9y6w3zXr9MD7NR
	oujxenc4Fm5RsBksBV21M37C0mGF5cy8G2MFMwRI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b013a094-fc852c29-feb6-4d34-b19f-897a3d6a5c1b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e816660749452e40d6059d10303eb957e1689fc0599c498d5b72c6b3bbb7d5ae
Date: Thu, 18 Aug 2022 08:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660811452
