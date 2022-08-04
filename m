Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9BFE7C
	for <ddprobe@lists.linux.dev>; Thu,  4 Aug 2022 17:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659635453;
	h=To:Subject:From:Message-Id:Date;
	bh=7A4NWS5W5ZOgLmoHdpgRRQYgr8HB6UwAiOLAD30qvDA=;
	b=BZrB+GXC8U+oVPVPoiLEgTTcCDQeVBxxJtV0LMmF1fGb1/jLBFj0993USMjM9oKL
	Tpax97Uifzf+a7Xr72Eu+wINPwlz53UP28kL3wykivV2VRp3yZ548IdzDH/XWrBsD9e
	+o/xETcaFtVN0QAQbLd8rp/Xakfrjxec2BHpCg7k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659635453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7A4NWS5W5ZOgLmoHdpgRRQYgr8HB6UwAiOLAD30qvDA=;
	b=P94Tzs6xQqXXvIkrQmiS4l25mcXBK2Rp4iQ8U4L35i4C1IHK2m875TkosMJe2ZBe
	5Yc8Vs0mfrU2JompWp5JDXXOH5HPkDhIBhgzqzItCwKFh5Yiywxjwex3wurjzH5heOz
	NYN7kiF03cbBqdW0F5Afyvx6QmbVf0J1oufHoCrU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018269fb4a9f-6ecf4d3e-42a5-4961-831a-cb4018f2097d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 53b2bd1e23b6e7d36f251170f04099cd142e8fb8d63ebec7851495b8474f22fb
Date: Thu, 4 Aug 2022 17:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.04-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659635452
