Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12B8A3206
	for <ddprobe@lists.linux.dev>; Sun, 29 May 2022 22:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653864599;
	h=To:Subject:From:Message-Id:Date;
	bh=ZEpByWZJhtawj9s9bx95M7YGohCmfoyc78xYX0J9/ww=;
	b=JiDkSDtuIlzAtOfijtX7ITrB/WxjPjg3IKEOv6L6WL6m5W2GCkEZJmyvDFmlXM88
	ADpvZu4uS1itun6LLMdXuNcztZLqiOC1RCNYNq8XnA5D1BRy3/H0n6BMiJpfhsEkCPX
	BVU7Ql9Ez5u1rZB5gegFmL0vW9VT02KIuZTaGSDI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653864599;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZEpByWZJhtawj9s9bx95M7YGohCmfoyc78xYX0J9/ww=;
	b=jrup2fD7EFsy1W3TgGFlGhcKwIfwxjfaqzWZxq9xMBUk5alq5GTkI+JXXDElrseX
	j59iq6oqNa1RKr1qskNSZHzuHg+sZ5agqaXvAEyk8w1Y4N1qBUj5Ix11WNcGO5PNfck
	4b/yGSipZfhjdO9jfnBtNOF4CD4uyUk8mIhlajGc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018112030f22-1f019d1d-db00-45a2-9cec-d6ec4498e286-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 44c33ab1057bb609848e6b3a89607428526b387427398cdfdc62df2a4822e96d
Date: Sun, 29 May 2022 22:49:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.29-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653864599
