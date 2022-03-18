Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CD3715A0
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 20:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647636385;
	h=To:Subject:From:Message-Id:Date;
	bh=5PE2SSmnZ1la687PmK6GMGl261ENTw/s0Wgs9qqOiV0=;
	b=H28hipgWC0rdZ9R4NMtW3jhtgzYX4v0hB7WlVSnKLgVl5L0Oub5EKIs8LbL/rEh3
	ieOZ1Sh97PpVJFJqjciQNDXkQywVwv9WxC1j1CjTNl9b5BK1SLdyTtn7ylBTBSOm1dK
	nUMeBRIX1W4jSLcwR0Q3YhCadiOvHnNP8z6j/htg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647636385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5PE2SSmnZ1la687PmK6GMGl261ENTw/s0Wgs9qqOiV0=;
	b=TroasJR71BK6s9KgwbaCoVhSU/shp79QTF1gRXI/mBL9CRiHB8VIRl11LgqQOUEn
	4nhRo+Qow8M6EsjaEr3+TipJJ47O3RE5L+p+VHz3e+gwmu6MDlGe9qquYZYXvbVvQu/
	gYJAw2+5+hZK8aIyQanJaBrRGeTodt2yHfKr2En0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9ec80c0d-e053d3d3-67a7-428e-91a1-890e214bc83e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f548c5f882077f1f50975ee6fee2113ab41a237d16c8c874ce51944489c4b7a2
Date: Fri, 18 Mar 2022 20:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647636384
