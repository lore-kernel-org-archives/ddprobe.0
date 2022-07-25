Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F17893D79
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 17:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658771812;
	h=To:Subject:From:Message-Id:Date;
	bh=WfBRRlT56lsfo1uCalBD/micbtajze2i3Ll/iRJhSNw=;
	b=ZGI4W10fK4DkVtrQ3cs8bYtARvSjgbCg39l2DpLnbLb3ESJlzI0FUiE2ECAM2veQ
	2xXh9v9QvoyPO2qeH0ET4XHnVXxT82ArcvNWfoFNFa8YPNfEhOllokob9cFy26oW2cY
	z1nfI05GhcqbfEu0qUEDQH8vNj8f0R25b+AwNBeU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658771812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WfBRRlT56lsfo1uCalBD/micbtajze2i3Ll/iRJhSNw=;
	b=Tg4sf+3a8ohXSf2wvQ7zA0YZCoIA1D3ilV55wm9hOQhhHpAzAfkG0cWA3O7Em2pL
	NofEJ7sU6LQJLS6GJEn3a8ejFXxw8Q/d9A9ShNzNRAiB1sJ7iVz6Z6BYIUKIdVHvj6L
	wPO4TA6t8uF+EQY5hf0uAmtzKYoceJfwSbNP5XEI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018236812fae-119b553f-0d1f-4c76-8324-ad7785b26578-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9b557314a401d6542a9e526d3561e2f801a0a1b290a73a3b8acb34780fc140e9
Date: Mon, 25 Jul 2022 17:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658771812
