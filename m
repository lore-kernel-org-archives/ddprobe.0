Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37127179
	for <ddprobe@lists.linux.dev>; Sun, 22 May 2022 12:34:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653222839;
	h=To:Subject:From:Message-Id:Date;
	bh=Rrf93fD/MrkvmBD4S0CxccMsJ0V6a8xgC65pu0vBwI8=;
	b=d2Sjf+YPv5h0nZj12DNE7ZeCncALAdYYbX59wIHbOoTmK7abRXRFoSck+svOQK0J
	4pGN+B2dkbTi4Xlz8jnLg5uMawxtTGJDvDYBbUtJODWhcQBvd7voOTDb6rtqQ6XAaIR
	mrfG6AorK+hFLMU6IWSEOVtSh6J2FEd+p3AE++vI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653222839;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Rrf93fD/MrkvmBD4S0CxccMsJ0V6a8xgC65pu0vBwI8=;
	b=XAY9CT/FT9LLNht4BtQehZxp5uNiqA365untjhcyHdPI518jMIcV6+DgbRYEoTRb
	y47ck8SKXn5Lr55WbZVQt9ola1eCOoxxx6l6ffCk+RqH+oykbvQCbotZVamuo/KH6M2
	+9UwIx4y05rVAU2qIC/gDdNA37OIiG8odgsOjHzw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ebc293f1-541c6911-aec0-413e-93bc-9c0399f3c4ec-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cf3915a37aa57d501a3135d18c77f6faa6dfc0ef0cacf816866733fa8614ebb8
Date: Sun, 22 May 2022 12:33:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.22-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653222839
