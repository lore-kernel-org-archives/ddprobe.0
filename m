Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0319C7A
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 09:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657619812;
	h=To:Subject:From:Message-Id:Date;
	bh=MiDA9e5GTikhTjiS2ODuL7Xe/diBfo+gsgdI/85fXWE=;
	b=PQ7fY2VYWy8LG5sLfpEunLHtMbog24T7LRXl3uSHXxJdMX7upjvKGQRIsfArOW1a
	bbTtXFGzbngfqhTwui9PlBdQ7WbWCF0qr/r+ZzqBi/GhKYRq0e7ESqYnU8+qEaptaZI
	AqIDaz35ICxLKW24R9SPDba8PojnRsPcwvt9mSz8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657619812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MiDA9e5GTikhTjiS2ODuL7Xe/diBfo+gsgdI/85fXWE=;
	b=S8Lz8emVlVpxWAvFLjty3eepBsqMjnR9xCXaMMDiRjIo5nZQKqq2FCsgIhDVg9uS
	dQ2p8+7kcda7mC7YpLOK6OiHftDgeT0Dya8UXw8l3o2cwUrqsK3k7Sk5wB1ItPuqnDz
	Q4C9bIfDn77FFIAaAJN9gTflPN17dODL67NfV7rM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f1d70faf-f43a14a4-7806-44d7-b5ce-924361325af5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6378cf1458a66c216eaa6532f86674bbc5cf75e22d81db96e29fdbc1fe23b0d7
Date: Tue, 12 Jul 2022 09:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657619812
