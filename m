Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A85D1399
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 13:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659013252;
	h=To:Subject:From:Message-Id:Date;
	bh=nXJEdTsWDyd1EfqGDZwZxt7XZm456JinboB1Xptd9z0=;
	b=TOOFoyWCqzlxisyUyNMe5Pjt5r9qDrAcRnuCgZyX8GwpheRNiPBsPjRZf2iGW5bN
	URcF5YfLbmvisqNfDNJAgxjIXM6Dc1cHtsV8mLMD6Uj5zkjoUsHrL7iVzCJIuhTfgbO
	+tVYm1mWeeVz1NZ1POPTHiuD3FxYgq3cXtzJp0+I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659013252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nXJEdTsWDyd1EfqGDZwZxt7XZm456JinboB1Xptd9z0=;
	b=Q41HyZ50R8rXw5Ivh9rwLrqMecCOsDr2gxVyMpBrvRxjGJCKipAzHJphwa0lLwB3
	aFMIRMzzGc8NWW6FpIV5+Cq4PIlJ/enxP+dbln00PDkOm1bXAPNIYq9jkiGdNa6wimK
	xiIfEuqyPpRhVFXdcAHwv5NyUpSY8Nd0Fb5JfyuQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018244e545d1-6cd4c337-c369-4215-b25f-4e27e42f2d3f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0c25b90fe55a5ad8d55db976c790c01cfcbcad63fbfcc3db362693ca130ffa8f
Date: Thu, 28 Jul 2022 13:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659013252
