Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F4AE7B
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 13:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661176252;
	h=To:Subject:From:Message-Id:Date;
	bh=F5G3JWRuJzHFp4oAdTewjwnbreWcBYZWB8cMFMoz2i4=;
	b=MeK3j0xoi3gXyamecv2hMGbDv/w2nLPJO574sbo07xoH2WkYxgzs+SczFqWUPr+k
	8e7rDtuyvKLrliT9S7i6iFJa3wjP59Lk3WL4cBwSpaW6T97RGwudw7vGydoqsEN6Cr5
	DI7oQMB5SFyKDMdDiWq+dTequ7rPAKkK0R+JZSPY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661176252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=F5G3JWRuJzHFp4oAdTewjwnbreWcBYZWB8cMFMoz2i4=;
	b=PvHVqb4N8vPrIsySk8qzfEmDCJkoH7BpGyHNr174pAzWBIgv6OwpuXGRUG17UZq3
	cvxnxuFQ2iNr9nKGwz4ubRzsL5O+MUO8jmYqSS0f1PbrEGPBSEJpSOqWw3C4J8VPbkY
	k1EFWthap43EeOeXrtQde7yZ6veHYGeRcl0ORvo4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c5d208b7-7334ca8f-f8f1-44be-9887-a6d37a8f72c0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 70cf4fa4c04f7466d72835b24a853c3ef22cadc4e378434f54d76a087bb8ff81
Date: Mon, 22 Aug 2022 13:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661176252
