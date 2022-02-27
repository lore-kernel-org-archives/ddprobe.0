Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F6BE2F2B
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 07:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645945584;
	h=To:Subject:From:Message-Id:Date;
	bh=Y7xkHBTj7ZChTojJs8a1DMw/KGNHbZKgc8T0qNaEphc=;
	b=esqQDTuG27aSeE2LJu9eyEW+/M/1a/Adbz6w+AhMHPOxiu4QBaRIk8Oo+HGZ7jFc
	wAsZ4Ru81NH40Z9GcWY7ZJnzgbFmOBnuQhb9LIotDF9Zl0NDc6NhjR0Z8hrKpmTg2VR
	DsPWPNc9QGcm7nDtCH43j/760hCCBaEsuXE/qwic=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645945584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Y7xkHBTj7ZChTojJs8a1DMw/KGNHbZKgc8T0qNaEphc=;
	b=N0iA4zrCSPLo0ezoztRrFBL29frn2czxPtTMH0I+Aa14itxtqJoQpelQy/eLa3ws
	lZr2WZuGnyaHtVVnrA4mKI2E7iy84m9lTNowFTK44NDgnKNgKA0eOlSdHU1npc/d3Z4
	0W4RTlk+nX66/EORrMiD3iNPaTGsZvdaLkQXNazo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3a007ca1-77a83ad3-3ee6-4e29-b04d-f780d2f8d3f2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5071c00b5611add65ddaab1706fabc47f62db2779e61fbe7fad866ea5c59e6aa
Date: Sun, 27 Feb 2022 07:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645945584
