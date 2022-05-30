Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B70217E8
	for <ddprobe@lists.linux.dev>; Mon, 30 May 2022 08:07:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653898019;
	h=To:Subject:From:Message-Id:Date;
	bh=qSVLmr7Lnm4rwv+j4lJgHl+XTvg6aOxxzeldQM7iIY4=;
	b=dvNTLAcrn2DjLv3Pirab+ShMNMIlx9IUoZ8hQ6OZjLFKt3UzX/Pk1DSdjSVTacl+
	f/cYp8zoWD2QzV4E8UZ2hqsEHlfDE3nQ47/h0LDYOEC35fgHGUxXXJk/9K3lJGjLPrz
	CxOAKVollyV6FcmEzhi39ksj4mugnmtqMcgkd5aI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653898019;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qSVLmr7Lnm4rwv+j4lJgHl+XTvg6aOxxzeldQM7iIY4=;
	b=NPARyBg91UEyzI9efjs3vIQ/AtkpS7teIES+6k11z0pDjnhV3j67O1D06lFcQHqA
	HgK6G3p2RoqFa7StAYr1UK0VgmudS/S7PqEeMdLdEMbDJ1QJytlkqxE1voa0uRwxu+W
	0SHtBkTLevirOK9gaoaW5slRKLfRBT4O1jUgtt+s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181140101b2-b8ce93b5-f580-410c-8623-933d73784fd2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3df9e220abed61458dd4661cb5a684bb4fc4b094a4dcf61c1c792e6af2f82fa2
Date: Mon, 30 May 2022 08:06:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.30-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653898019
