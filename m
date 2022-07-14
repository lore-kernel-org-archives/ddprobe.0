Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E16C600D
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 20:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657830412;
	h=To:Subject:From:Message-Id:Date;
	bh=R3mNuxUrV+lOKx2LWjK6Tnv/dAax2zL2Abf25sB+RUA=;
	b=HmMxjYc6zHlGf4rdhLqWaHX9bDXf9l+nMdVWCX+2B7rpAXcomNS7y7EYr/CP1AkF
	Ig3JJV9qJPBK4fMlVKektlfVbAuxSZAL4Es07iJRC/SxGNFGRUBFexnLMvVlF/jFKMM
	Y2jFTDxQfd6EG1s2oT2aO7kwNAJQZRHFIzrATUr4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657830412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=R3mNuxUrV+lOKx2LWjK6Tnv/dAax2zL2Abf25sB+RUA=;
	b=gkyGjDuj8laZE19RrRdaarA7g2UZkUHK6Dh1dzvL/OUPSkymL/QOv2DAOchrOuAd
	bXmU2PQJwpCaW0iJYgjVVW2tLcG7W1q5ttHezaSd9kCxs5mSsfq0ZE9PsutAEW/KqZI
	vFmWUA8AtO8Uzm8XguiLeJQCc+Gz3y0RYAmptUcI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fe64906c-ad55ca9b-9ae4-4d60-8670-8baab0e9b007-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7ed3f2238ab97dc43a6db4d5600ee02f59accff4c8d41b78e359e12bd6d4364b
Date: Thu, 14 Jul 2022 20:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657830412
