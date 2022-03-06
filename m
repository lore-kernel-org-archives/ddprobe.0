Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7281810EF
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 08:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646556085;
	h=To:Subject:From:Message-Id:Date;
	bh=lBps9WoJLAeVV/18HINJnFFKqTj7EiS+J6K1MsqkyGA=;
	b=NcddExDUPr/9VhBFdVdki+NaxatwONwquv43nx9+kFqjF7K+/eTj+ytOMrcEE+Mv
	HMqCprZ2/WZwsBuf4Z6C6KknLXqk08r/lmq7lseqC7sjqDFwBZILUK0a02ctRlmRzTb
	zwjZD5I5pmT8p08QcwIcNRGuaCjUIkw/ZImBW/nQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646556085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lBps9WoJLAeVV/18HINJnFFKqTj7EiS+J6K1MsqkyGA=;
	b=ACkrRz+1v5fpdyLhaO1BbrvbehOJ5oIZT1QL3Ib5B+F+DkhOqEzGFtOn9gowlpOY
	uklo0+gQzmjmHRiqgRKKuIWsVQ4kx/3at+SmLL7qfEONHulVTYXSm0f+BHiJUQiozyR
	waT8xlVgvoe3bs3ltHjJgRycwgPsyHfEnEUMR4l8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5e63fa4f-eadf68d3-cc30-4cef-bc1d-3ea1b273fac0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6b8be9d0d320ea8aa4b6e65f63b9d3df99cb8fde7c7e51b380ea3cc3553e3989
Date: Sun, 6 Mar 2022 08:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646556084
