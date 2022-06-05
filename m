Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D5184681
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 07:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654414199;
	h=To:Subject:From:Message-Id:Date;
	bh=WGzLhtzKBN2hXqR4DeXFR8J0atTijf9aq5IvmMLLpvQ=;
	b=e+wz91joe+jXJf4Lf+68zVai37/CDJy78jBpJFOx4WvTaaHGmuF1onPYqD/ZAxM0
	rb9/imNOVken8aIsZUY4tRsS7lfSeD9XnfXm2J3L+wS6+OdmZNpRK12mAOlBd7qlz5+
	+xCJsNwetLsoOLSmZ84K1F3RYg4x+wm8wWq7U8wU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654414199;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WGzLhtzKBN2hXqR4DeXFR8J0atTijf9aq5IvmMLLpvQ=;
	b=Lr8BYXNJ6oHIeSHycokqYuBzsXE1+deuJ3AsJk+gA3Ad4cU0xhT5G/2lDtjlmTDT
	Wc5kh3FfJn3JpBP+oXub/xkRAXyfAkjxEyj/VV+x5kmFRH9b3ip+wLKzo41b1y5J/m8
	cAOx4oEj9SZi7oB8Npluge9QZHKfdeiY86WrCCrM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018132c549cc-554ea8b4-6e47-4df9-a06e-1a0865e4a4ce-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 905e869aea2bdc7d92b345d6088d4a9978732f6ee1fc0bcf579d4352a3986d12
Date: Sun, 5 Jun 2022 07:29:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654414199
