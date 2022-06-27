Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F2B217CB
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 01:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656293212;
	h=To:Subject:From:Message-Id:Date;
	bh=gqT24D2/gV4dXo2newBjiRI+9YsiBwHGhjsldW5sCtI=;
	b=LY9vE2wZx7+zxSQq0BiK6+yxLAKVmHpNMIqqPlAOtm3VJWfzXmS7XH0qHgzd3TCf
	544JJKkX8uw7oLCPgNb5Q44AsB1nlr5tFZtIL4Yz+1oDESFEUQJrJejh700oABRG/sM
	0VBiwOvEOzUaxLl9C3oiqX+lMwroq+NgNJAiCFFY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656293212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gqT24D2/gV4dXo2newBjiRI+9YsiBwHGhjsldW5sCtI=;
	b=gjvCJMazgBY0Pcyrju1ud2c4r9Yyx6seaf27sIV1uqwlCEK0CfUo/1TQsuMSGaaD
	pgNDJnIIXEwauqhxWK/yeGBaR15V3JF2+6ALtC4hSft1aXP9GdAtIN7X/e1Kco9Euul
	vcjlvmnLIzjMPwcdiv/4lcvyJRlr0FesDrLWcOLg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a2c4c0b3-7c5c14f7-8830-48c2-a517-82ee33cf147c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f7fb72d7d03a08d3432b00b9afede0f20abc5bb0aec576b2c2b4e798821ba4e8
Date: Mon, 27 Jun 2022 01:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656293212
