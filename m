Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12BCB626
	for <ddprobe@lists.linux.dev>; Wed,  1 Jun 2022 10:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654080899;
	h=To:Subject:From:Message-Id:Date;
	bh=sP9x99je2T0lsyNOoo9SvSLuEZ/+3/4YoNvtXsDvwMY=;
	b=lMpLN1LF16dPXPo+GB65ejm5ovdnFfzx7yfVRpxAZo+NrqmGcfAhzfy3a7+aegqX
	YKk5RE9ovdrwSo21TvDK9LGUbBa6GIPhKfZ0YkGSbplxzebQM6LZVU/aPj+/YRv+XAY
	RvCRRpgaejBY5389c97r6iHL8BlYgZ2QVLl4QWgI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654080899;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sP9x99je2T0lsyNOoo9SvSLuEZ/+3/4YoNvtXsDvwMY=;
	b=K1VVduPbM5V7vw8mqN0hrge37AvY0UpuMgV4T9Qo0KQm9FRZI8aC9t/u1hTAl6xb
	9xfE9lrWZiolWfl3M3n/rfF8aRTfl+zXYL39e/fE0T+wxnx/TpWJxQSWGrNw5R1kehf
	LOmIV9N0Hp3oSrvzG4XI37c3zqWOHB5X85KzqGgM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811ee78903-023b6286-e613-4d02-a2b3-ccb0159af80a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9386ae6b3a4192b071945d6122276c02f375e1ed635159c14f1726f640c5a646
Date: Wed, 1 Jun 2022 10:54:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.01-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654080899
