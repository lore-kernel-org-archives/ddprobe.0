Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 049607E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 15:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658588812;
	h=To:Subject:From:Message-Id:Date;
	bh=IJvwvwSL5r/dky4OnmOtRY3rHYfBX+msw9ivf4GE3Ps=;
	b=RLmeStQiIWH+0Asuk30db6D5Ds70QwepE+cGn9mm/MU9ahHQupGfpPehKTq+u/tY
	qUPAt2Wkyna7kGexXe4n8/B7IONWvGuTheQPETGku0zC3SFu+Gkprx5r2XwOIOJzdMh
	A1GayVJie3zVWW1kyHtmXY+O3XUfNoToPu5Hke2s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658588812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IJvwvwSL5r/dky4OnmOtRY3rHYfBX+msw9ivf4GE3Ps=;
	b=Hcus3SYsmkwrQgQshnWHOdNQSDxgwzzVuwoGb1ubZfcw2S+Gc6yAgHaw/+weeFlx
	a+VNN86uHB3bdZwY3sb5MXFekD3xLTMVPzZuWAtO/u0xR4ujbvtlqtJ4fxLkcC6fnIT
	TAjLjiko1yQ51O6N3G3dNSYXrQBYDmZtJG2OOnPM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822b98d3fe-940b524c-e185-432b-a4f5-631740b53ef8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 49146667bf54a678262eb7adc5f2f49349245a5295b83af896071034f47d6884
Date: Sat, 23 Jul 2022 15:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658588812
