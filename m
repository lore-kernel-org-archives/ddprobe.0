Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A1724C9F
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 13:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658325412;
	h=To:Subject:From:Message-Id:Date;
	bh=LTBpCQldZx5CRF8qIslQBlfwfmXycIilhF0GFnOb9H0=;
	b=dBOvlZQAJHtBdtwxvvOvDGvOHAQUpTsXy1bKpU9GeLYKIx8ppCQx4bexjpWjj/c+
	aPNehsmAp7fnnYPFRpIqIv1JhZqXyRdbc1Cv6mBfn4KnFoOQhIv7AiqsY5M56jkkeZQ
	NqjeRy1mCpUlOJqMafQL/N466YgLl5ZpAwOvF5Ow=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658325412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LTBpCQldZx5CRF8qIslQBlfwfmXycIilhF0GFnOb9H0=;
	b=YN83alN+B1GUCWL1cDovVaFTBe7iv8DHJoIIyzVUdp5BbeK3axXW9n09HqnbW2yE
	NlNqSTkpEt/TWrx3mQM10e4/zo6isHa9R0TKsqB4+e/TA9TvtDpoO4JC9449E7eqeko
	/I0JEucuYL1Z5JtvLKGV2p1rcfp9yVxObzwWXtwA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821be5a9f5-85de9a3d-996f-4bf2-a965-94f633337ee3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7d27fe7def0cadc156848c5b39a0178f5b5d0d34093098100063a026173e8ca3
Date: Wed, 20 Jul 2022 13:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658325412
