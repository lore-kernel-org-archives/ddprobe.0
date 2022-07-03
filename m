Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C8264410
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 00:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656809212;
	h=To:Subject:From:Message-Id:Date;
	bh=WxuQQ8lkaLKz5Cs4mks8f9ZgHUvtZzatXO3jVcPyA+U=;
	b=AAzW9TwPpnUXmK/lrCGnkbjU9Oq3z1dEZl+WqOpijm3CmHwotVbDfXAt+82emRs3
	+IyuW/b6yglpMfQ7456+2D8M775NeumU5XbCbOTyFlUcIfbwSFgLIDlTzlikhE7843G
	iwUliFKjAAdcHkf1xRaHugdgX3uyzIxE45+4znh4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656809212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WxuQQ8lkaLKz5Cs4mks8f9ZgHUvtZzatXO3jVcPyA+U=;
	b=ZDR+rfWHdAP5zaLvpbQBma/uVwo/pyePqI/cj2eqXwqRDkVSPTNmaRRsETAz/CQG
	+lPWs2/1tKyzHHhV+QIBn7VkXYwTAmfJE4LY+ruRaBgO4TETyfU+FjW2b5y2lNeplD9
	Pc+Br2h+gD8t/1aQXxBNcQcm22/ef0aAVgIgJ39M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c18649b5-991bf555-56dc-4e3c-821e-06308fcd030b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 70a294c745f08da0fe2c4399e84d9103932c93cbc32cc5df12b13a7210afb4f9
Date: Sun, 3 Jul 2022 00:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656809212
