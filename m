Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 226EB10E8
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 09:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652780459;
	h=To:Subject:From:Message-Id:Date;
	bh=WQ91mCrD9C8SWeUdIC5qZmHMUD1LyWX+rVVZeEZunCI=;
	b=UJAbbU8KUlvCDv8MTo48SXWH7YrjxnT0/X3Ix1m9U+8K6gEkUgTnf1A5tSxnUcDc
	LzER/FE431MwgXSRkgZIN657WhjA8fVRt5vhmV3MLTwNdtLEr+nGLZ8ezIk2VsesQOv
	X6BoPRBrpyPdd5XRG3cmwZfT++g2pr67eyCOH6hE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652780459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WQ91mCrD9C8SWeUdIC5qZmHMUD1LyWX+rVVZeEZunCI=;
	b=bK9nbgs6U0JVOh2hrUX9ZGuc2tB6k5qlYN2UBwJCHI6xnmX7WpdtjJsyCtn4ND4h
	79EF0S5nxYPAQaSUV3lMnY33pY+Q7gXKRcd1buxMCP6SK4wHvA3qudCSe0c09lM9OZL
	62JEG3OcdhlkHPC8N6BX2kjX8chUaTAawwbJ0i2c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d1646520-38c21ce0-3128-4187-8a04-27960acf77ee-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3d304c7cdf0ece9a7be380cbc50c5b25214ba295b03fa7e0fe9a02a49d9d9ceb
Date: Tue, 17 May 2022 09:40:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652780459
