Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C4617E
	for <ddprobe@lists.linux.dev>; Sat,  7 May 2022 06:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651906078;
	h=To:Subject:From:Message-Id:Date;
	bh=HOmffjlPu0dOqbM8DJEi9WN14oLt+mlbko5yAEMgEAA=;
	b=gljqHFF1a2JzpOA1/RYM5CzZVJOSMDUGBVbIGt2MvqWbJ4y/Nw4lHDVSRVcD19+M
	IWCVOpznAagSsB7PZIVEsTDhwXx05bF55/swR73j3ehTuS5/ZuXBax0xruETMt3UrUU
	gl86aGUMA+sa2mvX1uNSdmojNvmFfM5XTcwBW1F4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651906078;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HOmffjlPu0dOqbM8DJEi9WN14oLt+mlbko5yAEMgEAA=;
	b=P9oOV/2ySoTsbdg25j8PhLtVD5zQMLvfk0QHeJkjGb/k8Qyqv+K7cmic+h1eTzAq
	C9BWL43+eYMbVo3oWxFrNdAEVoKUCllq2ejz8m0b+A3Fi7O2Go6gLRk6+ZjeE8C9iZa
	tRVuzyIEcxJteRAyn3o+krxlIzWHM7AYX4+9f9Mo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101809d466680-882ad72d-97ac-4d59-85bd-6d2967479227-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 490dea173a2bcf1fb79913e11c4cfe402cea6bda71c66e200454daac7682962f
Date: Sat, 7 May 2022 06:47:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.07-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651906078
