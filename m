Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B87920EE
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 10:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660990852;
	h=To:Subject:From:Message-Id:Date;
	bh=LzcPvm97oU93YPpHNXo79GMBvpuI+6eh1sGJwkZqyts=;
	b=eSBY2AoczmXJrxc2tspCWRofbRQX9IqeBm5h5BXcrPfcTZ/9VsFTQhMnm0IIOA+r
	cIjTjHaRa8kwSRNtr1aR1lZp299RTRd57himAIYV20GlTP+nkp4uHBB6uKBUJ+wFNFj
	wfGOXVt3dkmDHJXWxb5cnBt72Zd6pFAiFTCg1oD4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660990852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LzcPvm97oU93YPpHNXo79GMBvpuI+6eh1sGJwkZqyts=;
	b=OwtQbrDPbXzjNWP+8AaCsE9cPJbTAkHTq/spMrm5FkBW+o1k8OMXZs1tpGT6naxp
	eSwNpF874o/wu/nfTddEH07qpycnYdW7JZbAfkVOicuQOXvgyQYE1S21j91Lp24DTzz
	E4mFor23actk40UtwMj+HpaPeOv24IHFR6wF3WUY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bac50dc6-91afe843-5b2b-46b3-bb10-f6a13fcea22c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 782ce9bd2a3b7c42fc19a9be655690cd846025a1bf3c07ce2aa07c33e82e1aa9
Date: Sat, 20 Aug 2022 10:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660990852
