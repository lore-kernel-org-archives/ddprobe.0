Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 488387F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 20:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659384652;
	h=To:Subject:From:Message-Id:Date;
	bh=+2V17DJhTcELHZlh4OKUpsLJI7EljDLGtxGSPX8yFRs=;
	b=FQ7RPNBLejGjAWmTlf4TsrB6zrjcL+i6bNdMZitBxVLu5tp90gQK0wMf1EY53bG/
	QPW4GycCmQnzYX015mR2WOYvQlEBz+y+BAkIIaSLvqQujyaFR2DtqNJETg3MJOUWuko
	7EZn7eSaYh/s61U50pS6tWg6DGUVkBrT1eQOce1w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659384652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+2V17DJhTcELHZlh4OKUpsLJI7EljDLGtxGSPX8yFRs=;
	b=OuJ+ogSvd5KoqAE64Ik+6JaEohj9uGXaIJoxnIuAo7HAXcj3YYyl8ciBVLLJb1ah
	0FBzTzZCpIGElkU4ZieyicFZWgHx6M9m+QRpJr5PuB40wRHJrATDk53n25RyKMF9cyG
	NlNSEOKnyJyOw6H7Si7W+m5k3cyaBHs7S+SMRhZk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825b086300-71a1f30d-c422-45ef-b6fe-c6861d89523b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1365e89d9711b8a254f8ab62baae85208a9bcf35fadef11099f3446314055126
Date: Mon, 1 Aug 2022 20:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659384652
