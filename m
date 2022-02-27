Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 664402F2B
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 06:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645944084;
	h=To:Subject:From:Message-Id:Date;
	bh=7kYWlLjmBBn2hGRO3D0SZKHgtFcLP8pwQ+9l+JA+lTs=;
	b=bCnQvcTO1FcfjSQ8O8iOvEAIKC2g6NADhEoT8wb2O1lKZFklY5Yoa5vd5FRYlamc
	rPhmujlfQqA50kVclqjILsKaUvVnW5cMLKABxYbVEcM3TdhNTF4bycscwxlN2/wn4pV
	f4GhvoH0gLzzekaB7OwQY3gJGsIVtRR0QA0Pw+A0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645944084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7kYWlLjmBBn2hGRO3D0SZKHgtFcLP8pwQ+9l+JA+lTs=;
	b=XBg/ApyYFyX7lM30HKO8Bh/MQ88c8nWWCNdJY5mkj07a1ppS3efH0p2s+hsxgoNg
	Jig2HTPlVGeXK8RxC/PSW+B2eBrtDGNr+zbcnPnbIbqDjF7iy82knsmIVHwb163Ulxd
	1vE6Xtzx30Aeqan6/9vrDGnDl+wfETNeqGxmHLAY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f39e9993e-b9310a6e-afc4-47fc-a405-e8f68b1ea4bf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3454b29d57ed52544637c054a92d4ae26e200d1c9b9dddb37703d98c689f8bba
Date: Sun, 27 Feb 2022 06:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645944084
