Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39F9C7C
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 13:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656250612;
	h=To:Subject:From:Message-Id:Date;
	bh=7lEKU9jrOeYYX8T13Rfkgjtlac9RFU4Q5NJcFe1w9Pg=;
	b=S4XoL3Ev1gE0NTp9/wmsCtPeYLIjlZQgXBscD9Map+wrNvCnYzYsv+CouAe8obxk
	dKV37+sD8NVF1lYSYC++mLHEg5w8HVWCmA7/HiLSJxOlYytrBSXklCXacHkV5Kzhwax
	n0EUPRneM6bwbsaRthtHcTd3MLhn2bboW175d6TU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656250612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7lEKU9jrOeYYX8T13Rfkgjtlac9RFU4Q5NJcFe1w9Pg=;
	b=A+k4TxL+2Sw0ulvURAKhATto+UpadMG4bvqPKBaEdtMpTSvfPyvC1wJHP2xQHhzJ
	sKytA6fh9FoMU43iFyz8hLR8ZmLff6XSdg/KL4X87kQVoUFYnBEGiMCW2aWu34JxWj0
	2iEOyqR4kVcx3QqwoXBxOOO0TiKXle/HLJ/Q+m9Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a03aba55-d4ce080e-825c-4997-9301-109e2c12014e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 40d0dbb87f373b8963334e9788b71360f08f1d274490f36b72b81e9a6b0e73af
Date: Sun, 26 Jun 2022 13:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656250612
