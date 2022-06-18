Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BC707B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 20:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655583239;
	h=To:Subject:From:Message-Id:Date;
	bh=1Q4qQzzz2eNF8dOrAno8OFv49U0GX3NmJVB0l+vDTcA=;
	b=T4jFVuoArOPvdMooL6bQfyc8kD2Aj12bsxBg/z1qvfoRuEJ+ktDtrRUbIxOGgjJD
	M9jLk8c0C2SMAJRSyMDdMKVoEKj5rkPFDgzTWFU+QfXH6+2K1kUTOvKvcNMxsyGeog6
	oEtkPmpmAg/FITH2DP4ChRt5I716ShvcLn2lQBgw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655583239;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1Q4qQzzz2eNF8dOrAno8OFv49U0GX3NmJVB0l+vDTcA=;
	b=OjqmLZd6ofVVEApEQbCfddRtV83bBUUSNJqV6vkgWXw77vPmoyLo4H3WV9lmw8pE
	OeVCEsVoWl/vGz/i/fPSfaS3AIoI72c93IsJkH2AEFjRLLpLeElp+U8WmkYN2o90Gu6
	+tmjDzdrdAbC2oTIYFY84vLf5Tdr+u7zEkuvWZTA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018178736c8e-51e2f84e-4f02-491b-8652-5e6a74ea72b4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9d2e7eae983f61de73b77155d28c7ffd6a9c00f6e8faf752805a8f8503622976
Date: Sat, 18 Jun 2022 20:13:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655583239
