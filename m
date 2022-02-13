Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30A267D
	for <ddprobe@lists.linux.dev>; Sun, 13 Feb 2022 11:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644752421;
	h=To:Subject:From:Message-Id:Date;
	bh=RLNlTg+Pwyp3LX0VQCKo8Dg61cnRhdjHIsj1BRqfMes=;
	b=hgw/nBzqlrzrIhE8xMygx6pGchHTH8AqHUJ0cd7oEUp+xHaBFtCDggkljh7in3n+
	yO3qqDjeJ8q/5Jln1g3P9MA1W/cJC0xXnsvAIb9Dbu606CuKw/hWAgmp3k2M2Vl3mve
	vxnfiatRotaVyjE6hB5WqEokXo8UWPWgryalDDA4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644752421;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RLNlTg+Pwyp3LX0VQCKo8Dg61cnRhdjHIsj1BRqfMes=;
	b=Bd9hh8mJzoJrt/apo7SD46ugsQPb92pELGWPXu8VOJSq4niGACD1gjr4nQax73C7
	hf+vsi82YCtUVAxq5QuUCgbNEif4J+xujyKzT3u8fKiCs6OS0RRVPGkN/KuFyxbl4+r
	Vx9z8Su2cYZ1c1KpYi13Q2w67kEb6Pof5lJ8XJEM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef2e24130-e16c6f40-2b4c-494f-aebe-75500ada3d29-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 84e5f7193339b7771820c973413ebab9651db7908e455e98802b558ed6c9fe79
Date: Sun, 13 Feb 2022 11:40:21 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.13-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644752420
