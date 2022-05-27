Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D0C9185D
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 12:48:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653655679;
	h=To:Subject:From:Message-Id:Date;
	bh=RdCKlT7ez/PuZYktUk4qwtn/gBCZS35NTIRqR3HXvlI=;
	b=BzZmr0Hjv+Chl3pfCJyHwWhSXHILIACBPnK5L/y7by6IfS92HJ/UnVyBPyUfZUPE
	WtgTh8vAfd/PfSjo4LXIsCWLxlXh52f1Gfat2j6fZXKW+Dgy7DloG5NreuCojhljRgM
	hycJMVH1w9v3Jg6dfm29cq3jDSqbQH4ov0iwWMqQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653655679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RdCKlT7ez/PuZYktUk4qwtn/gBCZS35NTIRqR3HXvlI=;
	b=YZjE90ztMbQAdljW1mk0nZHbgcrpFoMDVgHgI04ZKrCMBZc0jVVkfmfGYWcGIz+k
	0R8SQ3I6lsHHA+I/B4x8zc5Y0uaH7if8sxZ3Y6HaoA8m8zC6hIPH86MypuGrcaEEg9/
	JEtptZdsQqNNNvzpGtParwX8xbqCH6kMfKNia3rI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181058f3148-ca86bb90-a0ab-4f5b-9466-65babcfb032a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 606effbd4bc20d2093fc702f4a09d8c01d4d56e687631cbfe4d7c62a5b1c7afc
Date: Fri, 27 May 2022 12:47:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653655679
