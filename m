Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 984567C
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 12:10:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644840604;
	h=To:Subject:From:Message-Id:Date;
	bh=7a2vkgkPp410B+DaS1R9S2JHFiaOBDyo9wG6DQqtk3g=;
	b=mzN3sLw2lQI+rQlQJWttqT4yWwUrEx+bNS5djiQOVnfdgiQaoPANzM13HHauFQtN
	S1szay4oB/CDuKaFo1hj1PdQTtQ+4y1wTv/b5D22AuQHSYVd+V2UwWSIfdCnbEFJgnS
	B5kKwFW702GgjheVzlZP1H9NTMw6Uxo6JlVXy2Ws=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644840604;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7a2vkgkPp410B+DaS1R9S2JHFiaOBDyo9wG6DQqtk3g=;
	b=htf9kzt+NmmIcs1Q/UgVT5uDfdPDpslPoKGCPWm/EixQzvABWpDWD5VWDB/0NNEo
	iz3ZQt2PNzOqbhZmz+rrK1b60PsD4Xshbx0shOq5sMBUOMcU7gEi5d7uWKgj63C4it1
	MJVY6UHiOLFCkIrNNm9z7Ns/Jjod0xYPULkQN4xw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef823d15b-42a874fb-74eb-47cd-84b5-9135147204ea-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2bbe334cedccfea89dd7db8a0b62f64f6803cb9b228bd1d5695c7b176c6da88c
Date: Mon, 14 Feb 2022 12:10:04 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644840603
