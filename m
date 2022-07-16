Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18FC2362
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 06:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657954612;
	h=To:Subject:From:Message-Id:Date;
	bh=O/+MCSKZy3VQzt65LQFy3iBcQeIwxN/AbbuLyEcx2Pk=;
	b=FasPsQmiKVPcjGirwombNXWRfc4byNPxz9Y3QmzH00mJJEk0yoev+zpG72p38IfA
	OkWT94XyoHCFHXq7XaRWEI863qqd1ebVlxH4VWNx3gVBpYqSc8EcvvCg+djD6AAENmg
	NhnlRFeP0Gr639qla7KXUUuD8/b+xqdWPSNhYhf0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657954612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=O/+MCSKZy3VQzt65LQFy3iBcQeIwxN/AbbuLyEcx2Pk=;
	b=Bz4aeC6oPJSq0bA1FIfj98dhJJ83a6dnb38hoZh8vWpTOIlQcpsIF7XfYe5DA6g7
	5e1AtSWOXS/mcp4D1KBWjOa9XTGf/8eaCD76nmwEM+SMVjmUBDa52GLCRn2o66GzcHx
	AAqYwfBNFHm3Ve6R+wO8WK+bGMV3cuH1zfRloIXg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018205cbb439-91f44578-14b3-40ad-aeae-a7c37cde1dd5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9dcb7658e1b098cea6c51aa35bf93c854c133ad19dd81225004174272e0fb31e
Date: Sat, 16 Jul 2022 06:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657954612
