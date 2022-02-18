Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1EEF48B0
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 09:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645176085;
	h=To:Subject:From:Message-Id:Date;
	bh=aGN58mCgzjMfwYbCc3dHRSIE8Hei15mgy8mFrck82QM=;
	b=gOkpa9B1pJAOg2iIIsgD/SdXSCG2FdeUCVG4wEbc4bVs7kLj7j3dKWIOM99MU2D7
	ZDLV/5UDfA6iR/FN40z9LNXlIe6pJiTCMT8PFV4i+dSIt8hFusRqRN3WSPuk4mgSH2E
	dsf8Ss02bs+R3qtJeJ5ePOp2bLy6luL0byle7SWk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645176085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aGN58mCgzjMfwYbCc3dHRSIE8Hei15mgy8mFrck82QM=;
	b=ZXfyYAe9GysKMF496apdaKxYjJDdph93P+8Fr68DP5ZuxakSONJOjYT285zhZPT8
	sTOhDRFRy804xc5AuWWqKlB+rDURhdhngrnP0VkU6WUPXl3hixhRH3lJxfEtCswO9X4
	pQjvk+1S+R9zjZDT/WX7A4lYE9iyq4lBfzIv3bug=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0c22d99d-f4975de3-c3eb-4aa1-bf3d-5974bb874148-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: afd7e7e917e3c26cd56d5cbe8dacb04c6f8166c912e76e010ae81eb11eda2470
Date: Fri, 18 Feb 2022 09:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645176084
