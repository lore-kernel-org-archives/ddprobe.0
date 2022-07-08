Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C069D3D89
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 21:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657316813;
	h=To:Subject:From:Message-Id:Date;
	bh=0Qi01c4L9u/dAdO5uLaE4nJCiA22LyGuOn3UgNkiruM=;
	b=I3/EqPY1lrrC42Yi6Q0f80e+glQreaPU51HTtJRPK5eoS39YWJrFhKjfKPd/2MnL
	+yygXb2eAg+EX/W3djqecFydXxcwuFUUia3npgyz6CvbHBTwZUSg8F8tidGf3ksXr80
	MR/CYS42SgXp6rAv+7YGJuyFVf4z6Dwq9yjfGeEI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657316813;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0Qi01c4L9u/dAdO5uLaE4nJCiA22LyGuOn3UgNkiruM=;
	b=UL/3MLPGZva0GdL3j19TVce3gkTOJI4LQ05toDBK+UnSxFBtb9HWqSWZobloJdPj
	7fz96DyyhUoDtMelq1YWsqbC9lvv2q334UIEXSNQPurOHgYyJkTLJhDA5VJGafoaKFb
	KNFsnEkg4SfWXrmsQWBc7GwSFufWeUSRG6UzFMkk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181dfc7a61f-b04a9d27-4d80-4298-bea4-3d2d4cd2f012-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 293e1abc7dd01b04a31a7c52c7f6940aac08098ef2040356ece447c57a6e0a4b
Date: Fri, 8 Jul 2022 21:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657316812
