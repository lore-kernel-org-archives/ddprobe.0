Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C48615A2
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 00:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658449612;
	h=To:Subject:From:Message-Id:Date;
	bh=uSjdT+l9KKnLxGkejfH0yNjwqXaMC4bdBmjvpGszxjU=;
	b=QCrPGDzj1aw/bwm6eSTyTd73cWRL7nEvhlK6MGASbdA3B/llOSLNXqBkNNk1SV9W
	nc2hk+xFCwn/h3ivncki9nX4u+9bNFHQPrFqIyfz4c5hy26AdJoMzz7S52t9K7cHN+A
	9Cm+ky94is7zjttgbsw/mJxO/dWkXkqW5vlf+69Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658449612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uSjdT+l9KKnLxGkejfH0yNjwqXaMC4bdBmjvpGszxjU=;
	b=hC/b44n5VNJ03lO7C13nXEyhBTAzQpReXW8kEUQjySaFfWnuaNBL20BYhX22ahS9
	Ma1bgDKvOZTXV4Xsg0hqUUIpcQGR8m+1CsAWQWIxYtUc2i+8R1KT4z0xSiA0oe2KyuJ
	QG9loCqNmMNfJWfaVdtsIpMRGjtzuvgTkQArn+Wg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182234ccde1-011a0faf-67cb-4576-87ee-93f64de7e960-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 84db73de7ae7ed18691f968a897426ec5a5c356a31501f5f61bfe2a8f25e4c5b
Date: Fri, 22 Jul 2022 00:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658449612
