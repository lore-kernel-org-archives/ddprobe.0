Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12E744694
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 05:53:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655185979;
	h=To:Subject:From:Message-Id:Date;
	bh=H9W9lKAYMdu+oUTWL2M9nULN3pDzAg3eLH+98CxvEsU=;
	b=depfqMJijMtUsdHPKZ+Qgz/xFB0NeCSKzaMVfY79DhFA1OtOqaWGc0hOAQl3oV7e
	MgM3jICW7c1JfdT5UekKi+l6cBDNYDNM0m6c7MUqByxOnbRtjJgoxpm7u/p4YTbSHT2
	Eagz4KHq7KgwGEX65OM96hm9/EDKh7wKegfE/aa8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655185979;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=H9W9lKAYMdu+oUTWL2M9nULN3pDzAg3eLH+98CxvEsU=;
	b=ZhND03Q5Q+7qCtXQ87HRNG+22V+gDQrpX8O0cpNUq+L0Z+D3YYCRrW+74Kk2pFXf
	OwzzNI1QW4MkvQjK6RIsL3nEI5KN+lsspRWGU22rtqoieJYv3lH7RSdH8F6UAZkmZC5
	EfZzdD5zN0z11ZwBD4W6dUFg69eEuiMMPFgDSSro=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018160c5b7cb-a900fd3d-e00c-4789-8985-1f472834992b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a050951f5708897d663ad062d2b332b636533de124a85f75301b9986a3561523
Date: Tue, 14 Jun 2022 05:52:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655185979
