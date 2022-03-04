Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D8D97C
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 02:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646362284;
	h=To:Subject:From:Message-Id:Date;
	bh=H7KfhW2vXP/mqxUrN/yPSkKxWPtuCM4ogs4NycO1F4A=;
	b=TezdOAAqF9iY6I2Aq7L2dvBrA0LQSV3vqM0cJXXob5PwJL6pg5+Dlz3EnqXS0UlJ
	J2ANDIVPj7W/+q74e4v07ENhhF9b2K1f8KfCKwvLvxUMI7rN4vStLo3U46AJOTx6Wyr
	M2TABcNCBWHPMRrYZcYW8vBTI2h3fJzoUnQzIcr8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646362284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=H7KfhW2vXP/mqxUrN/yPSkKxWPtuCM4ogs4NycO1F4A=;
	b=bRK5THyjefZL8WuX8mYdA9jdweWkkR7AOS+wCy3Df0pD4zrfDLdGf9TXhAEPDakQ
	npZfSiToXrdL2Y7bT5LuW6vIcKX/lqDm2N1GFCZxJRb4X+CpDi+hCt3Tv9JQ86hgRuS
	eO5LZvnaXIddzBp4Foc2bifyAKv+oeASOPIywb0U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f52d6d2d8-e90e66df-e420-4368-a17c-62c66405411a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8dd7d80a47e07fd3f29df9abc46ae99ff0653700b5f25f9d774ce0f9d91fc27c
Date: Fri, 4 Mar 2022 02:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646362284
