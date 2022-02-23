Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9160A800
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 04:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645591884;
	h=To:Subject:From:Message-Id:Date;
	bh=wA6Az9jhWEM2/VNg/NwGhQMqGm0GBJNKeYCl2k1r1Bk=;
	b=eH+NBqbKyShXeft3gVR30jdZs90bGuPcLw/XamUzvJhZlWE1umS/SugIX9bBmB53
	g6E9q/C4ozGaBTmnXw3DLmjQAjM7BEiXFC+LyQ+spwXbO0CzFD3VAqaDZC604bpFWX2
	1tvNw75vmp31VjlokTxLmJr6xykzvu0vwplpcQEM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645591884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wA6Az9jhWEM2/VNg/NwGhQMqGm0GBJNKeYCl2k1r1Bk=;
	b=M8LMeieglkPgu+4TEhwEi/qBI59xRgaHbm4qhmgBsNMStnTk4Q9dqD4KekZR4w3l
	VLzjfGuAih7KpCH57jmn2aLtl+rr5n4uyAy2UkDwU9Q8rEg+ZO0KpjE22775bmXJDSc
	6wW3rs/LApQU22KOZVQwPuP3Bgnf8RPs+zaDCrio=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f24eb73e0-f779df2f-afc7-4964-9b8d-1aba104ad2ac-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 50016fa9cef8af875ef5ec1d519923146dd1326fbcf94866c996e89d83f301dd
Date: Wed, 23 Feb 2022 04:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645591884
