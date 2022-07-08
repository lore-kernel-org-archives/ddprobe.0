Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B6933229
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 17:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657302412;
	h=To:Subject:From:Message-Id:Date;
	bh=xsT7Z7gv884YE/1goGbSXChjaMWCJzzQBB33BPciy0g=;
	b=IW+N1UMRWw28n7dR3SXWb7kdlvAuvrjI7TbAnRzT0BAW4QkhyYBp1A5Kh+RgG9UT
	1u6kUbvA+ufGgkjBRN6b/oT+YqRGqITQnmtDPevN+U2pCNEdoX6lUw8ggUl6QaTSJge
	xcUfaeqZMlUJ3eyt13DjX6mgQfBRp+KYYWTQbGB0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657302412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xsT7Z7gv884YE/1goGbSXChjaMWCJzzQBB33BPciy0g=;
	b=h2lgEY7t4hEIh36x9yFKViER4D3nFfBwAMX394LQU9jL48UnSqR83r8tRrnxC12Z
	LBVPWrMqjAtADFEmtc06r1Y61JGy2FIyNqKubKnSsCe3VOVvqPwj+plBNRDMBJHT0cY
	aCcgt36WaTu1FqEV4HxDEHgXtohHNNcyTTLl9Xuw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181deebec21-bbbda8a4-4034-46a7-b02a-4aa4b4d639bd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a1c37715079dc2295e939d89892ecaf26a2350f8730b0e56792394cec5d58be2
Date: Fri, 8 Jul 2022 17:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657302412
