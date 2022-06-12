Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10D6A361
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 14:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655044859;
	h=To:Subject:From:Message-Id:Date;
	bh=GWcZlQpmrkHiItw1rr+b2rCnkaTAKBFmt3lJjNFzSfU=;
	b=Di4iUKNLnQ80FuOIbStwwha6kx+xs26Fv4XKXJSWqBhF9xn5gRwzbGIYQhpMned8
	YXSr390r1KvJT71tN3o1GCse8bZRXvy9BPKLXsLNQNMcGw4kAM8pWrh7Qyv6y0mO39s
	93VotUYEZqy0uDq6wTdcvwudeJSSExY9E9UpHhYY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655044859;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GWcZlQpmrkHiItw1rr+b2rCnkaTAKBFmt3lJjNFzSfU=;
	b=PtJ0betmyl8s/uY45u+fPqM17tGLTbx4FC4of3qib+0NqRNLOW3RubIvvKBYrJeA
	pnB9m5Eot+WA6DylSefmfDn/w7lhd1YLyH7AJFvTlk0ORMmCajIyjjicfXeqTe+MwpU
	LodBVkAr2tONNKgb1fPCWmgfcELyrGW5uVf6P0zs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181585c658b-3533cef5-c99f-4d9c-8d36-9e05e2dbca60-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d353585618d9f0dfdef67eb3112978b30e7e04d8fc72cb6a5da95b07a9c22f62
Date: Sun, 12 Jun 2022 14:40:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655044859
