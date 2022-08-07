Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45CE27A
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 15:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659886852;
	h=To:Subject:From:Message-Id:Date;
	bh=E9l1Yv0pTI9pSPP/28HB8EBkv9LCKz7DnoQMywVbBCc=;
	b=VJG2+Mf6HA2MS474DzVLlomGFfH2YTfabCwBxUt6YvesSXKij25yxzJVpcA46fCY
	cevZfPAo7q2hUq2VFLc7fFGDBi2MZMkcZz6JeRRHotL5hjfTLcUJWwNzlL4WggOFNix
	BXhyRe0D0V/TWmWd+e7qUSZaNK38TyKVAbAW73AY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659886852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=E9l1Yv0pTI9pSPP/28HB8EBkv9LCKz7DnoQMywVbBCc=;
	b=WtL7qoBqsXZSduAn4L4cD/EchT8SNaKIWgnP7bcLyTMWPjiaDJ3Qmpoi8SRFppRU
	m7KOgPL2BlZ7K/wnHGdwS1FCpHtEEqq3Z6l9oQMXR6zAh/8Qb6ljv23RQ9SGsz9OSHl
	kFk3aNOT0yGo3GL1juo9clH3s9qU13/mVOiGUf3I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018278f759b4-40b31c2c-4d77-400a-b843-501a6ff46994-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0f134933174995a1f5f35e01c062c2e8b6948617d1548fd6074faf95f4f873b1
Date: Sun, 7 Aug 2022 15:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659886852
