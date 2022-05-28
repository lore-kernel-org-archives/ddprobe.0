Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6F587F
	for <ddprobe@lists.linux.dev>; Sat, 28 May 2022 19:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653766079;
	h=To:Subject:From:Message-Id:Date;
	bh=R4raopPgK3xX5P1CHdMVElyJo/IvUNInLzoafDcoTrw=;
	b=ePg8GF1fzPFysYIJicZJQioM5cEnKOGi0hpJxvsSlX+kpOevDrOhKJ7/iYpZWlWB
	FY8DOaIeAk9105ahQg6g9KhCUxs4mWq252weDRsY+b5uhJqvI10Evr8agNS4d5I02sQ
	A7RbS6+/gB5Q2V/Al6qIK4FQoyCjzhj3tIvGrwow=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653766079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=R4raopPgK3xX5P1CHdMVElyJo/IvUNInLzoafDcoTrw=;
	b=L0mz3vrlvdbZI/t5wuy96iAoDuT57vSRsN/MndBpm6zlKPNmuZTwwWNmDPiHZEqo
	eI4gHNFE86JBscLfsQTdNDFjJxaSnnpC1ZtyguWl30JJFWXj4Pok2W8cTnEccRSGDhs
	rJGpDZdBawjBvcqH9L27t9se5EXGTBzA4v46jRrE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810c23c2f8-2454fe9c-7bda-47c8-aac8-d692d2b46ab8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3faa23bbd7d600023e9a80959ed145868a0845c7e38d07b7ff57bcf74fde1999
Date: Sat, 28 May 2022 19:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.28-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653766079
