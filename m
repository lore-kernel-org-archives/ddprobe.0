Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 642EB3D79
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 15:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648396498;
	h=To:Subject:From:Message-Id:Date;
	bh=jbOErjnmM4ENc6w/hXrGb4gHrqZK3WXjfw4Zbt0rSm8=;
	b=mRGzAE0l9XriZoJG6IjSxmTQJPY+R+6fUShpRdNS42GL7oinJEecUkpvEMXwWM2B
	xIy4jErtMbRkfmxERBlLd9rQoQ4BnzZThR0B0hATcXTQdYghA+76zuoAqFAXsMw+knd
	g8rlk9oSQc0VNBW2Bze8mXPgs6B6G1qdAQlQgM4Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648396498;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jbOErjnmM4ENc6w/hXrGb4gHrqZK3WXjfw4Zbt0rSm8=;
	b=Ueb+/4s3dLZH1xHvfWuTv2X1miaayPddBrYGuEzfis9M+pmO0uCSv/5dJHcknclh
	67yySOMjqWmbSY0TzJlmBaSKTlYLGKTpp3+8WksC9om8CF4jR4B0Z7R6gT6erTafVjQ
	XhOGNYUpzaydNLuYVHQxzFE6Jbkf0zNaX5Ebm4zU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fcc167574-007e4f67-f0a7-4753-9130-330755a1aa25-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cd628f332c23a39b2037e143fec2383831bb158311712ddf2167d5fb57cd2bee
Date: Sun, 27 Mar 2022 15:54:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648396498
