Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 606BB257D
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 19:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660417852;
	h=To:Subject:From:Message-Id:Date;
	bh=4QA47x35oquKy1gElsvjLF2fCYeKUBlKN5m3fEvv2S0=;
	b=edj2xfZjIgT2Z7WKw3/fM7axGiwzyDJtEuhnZLgC6Bj24a6CtaHiFSqQLCqf1Yjl
	9q8mnLCplJ+wqVWbtIriE+BSSSXrQTZzUq44KL8Gb5So8uywm+mOnSRp+UjIFbmOUi6
	r7GVxnSFMLid9RANc0JfBKB26WzaxdHRaKuHE6M0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660417852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4QA47x35oquKy1gElsvjLF2fCYeKUBlKN5m3fEvv2S0=;
	b=L3kU5b7X3QngkHx9R5g5aO/jr7oH6jkoihOtDWbUybslFkxR2ne9dVn2gy1rYIzi
	DUI7Ov7s/anTFsyjO8zw7+rr9vuiDRRpXLmzxDyVRW25GIl4Q8WHYQnHECJTIe/EcPQ
	T81U/byJUTSr9G+mX7ORG8pOgg3saBp9QCCOS74A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182989dc4a9-b025e59a-95cf-449b-ae9f-e7d27306533f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6a73e67e2baeae3c4367742d5894b8d9dcb6719ddfa735a790dd5f7710b3b2cd
Date: Sat, 13 Aug 2022 19:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660417852
