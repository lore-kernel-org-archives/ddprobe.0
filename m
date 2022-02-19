Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6BAA5101
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 06:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645251685;
	h=To:Subject:From:Message-Id:Date;
	bh=C90r+4QHpQJ7pc062Sx2qbVCeJ+0vMaqDhMkSrCFEsM=;
	b=CNFS9pP9OcHvXRPP5SokLyC1A2hA6Y4A/63Lpmt90KHswCLqW3NxxQWdgxtQpML4
	Ln+ZnbETYoBvYcdROXJooWQJJkeRkz2gNPc4NvUnun7rKYSyoaU2rhQj3nLfJavtojU
	rI2Lwbg61RR9MhWte5aIT9q1bYIOIYkiP/6Mj8u8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645251685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=C90r+4QHpQJ7pc062Sx2qbVCeJ+0vMaqDhMkSrCFEsM=;
	b=Icc6MBJx2CBTUP7j7f5KsAOLuMhmoS8cg8aMZodKahzFFUIlmRYna2M1uxRWop6P
	y23HC3hP0dx5TJC8HUA+M8tH0RRj1G8pEG8u8Hhc9N9N2fyDY6uQIdjVDUkEDIITlh3
	yfdL3wTbKSKGaqngRO/j8CF1Fd7FGzeL8M5JyS8s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f10a4699f-c74f2ce5-f6b8-4b67-a0e1-97da371cb737-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 97f8e6dde5e89ef1588a9afee32308d69056cd87b36b3634a651297ce1882ad5
Date: Sat, 19 Feb 2022 06:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645251684
