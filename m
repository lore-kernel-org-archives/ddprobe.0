Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11B261850
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 10:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656671812;
	h=To:Subject:From:Message-Id:Date;
	bh=DHS+zJko3SWkNFf82+oNvMNjQT50tArA7EQ9lhK89b4=;
	b=TUa3b+0FrYWFLUGILvVpC8ZVCoFxEXgNIjx8xeedk5WkvpFxMQo0l+y0wwKktSPk
	TaUnAon40GZ3Co76lh+/5eBXrcq1g1Eq6cUUVK/Eb1xmznrKUMLhsbb+em1bnFqJIyg
	4oXV/FpyriL053Dd2200S2GQWBh0c5S7XC9/Q2k0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656671812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DHS+zJko3SWkNFf82+oNvMNjQT50tArA7EQ9lhK89b4=;
	b=hqA/D6cUPvWcC6H2rrcBWfWcLzbvpXxBUi6wWp2msvomjxxrjbdDU/50j+RKg12r
	nPQl/qzYbZndckISuptiXj5cwg6U8oEoXKmzJwg8biA2Vlt6gun0FX+kxvEvWY78b9w
	1Oqo90LWAfYgLsMo1oGJtaIwQvyTF+TT2rtxfOyA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b955bac6-fe30cfd1-f17f-48a4-b237-e62756484035-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e4092588158d93026bb789c3f3e3fc84204d775b897d155b62cb6e66f8af7c35
Date: Fri, 1 Jul 2022 10:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656671812
