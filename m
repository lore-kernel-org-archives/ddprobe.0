Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 046AF7C
	for <ddprobe@lists.linux.dev>; Sat, 12 Feb 2022 18:00:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644688813;
	h=To:Subject:From:Message-Id:Date;
	bh=65IPGQ5LZeDuierK804dxsCZII87jJvl/zJNmaHFVyA=;
	b=dQMjcLk4DSCHXpFOFCNZvDWj4pyEg2bQlq3F5AFOqtjJx37m1vuFRcOrJV/ikUGe
	S/dFfdnxdH5ElQdr/CeAjoaVvZbTmyGR3S0Vlwfbk9gk1UxwwcHyXUeGg8g6xzo8/HS
	o+NpW3WpnZ/GDsPVr1XWL1cUJjXFVEGs14Xep3MY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644688813;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=65IPGQ5LZeDuierK804dxsCZII87jJvl/zJNmaHFVyA=;
	b=b0WFlYxr/M3MQmGN9OnWbiE3mi+/A9v4e9idPhTT6gCSARQr3VcF/Th+Z3hz6IhM
	7Og6uHglK6JaDH7QgOFvLb7WqebbLcUrX++F5N/Ly99UUDxy3rFE3z3FRbLaikkOFGu
	w07tnkeBfUHUcHpBpMc1nwxVrVBrNdt4TXCoG05s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eef17ab73-560ded05-2c2a-440f-b047-f1d5bfaa8ce2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e4fd52d1272dec8dbc2ff454d1545c200b84a0269d7c717a248b3ed38054ce2d
Date: Sat, 12 Feb 2022 18:00:13 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.12-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644688812
