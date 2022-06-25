Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 286E8290B
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 18:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656181612;
	h=To:Subject:From:Message-Id:Date;
	bh=Bs6bOTAW2RjbqyuSyhE46n+itfIyaa452dq4bSSVKU0=;
	b=HE8jzL1lW9DFO2Ys4U+tG3NO26nbbzoWovK0+hNVSsPCWNH0ySYpmR1hQjjUCGTC
	nXKBZvjl6u/ZrXbxLBaAKXUs/ECFWamJ5iBvbJ+iAvUc+/DEPPThDgbHYq2byP18mV7
	MftdSgYFtnZM9+gDpGzoK/L0Tw4N/Ng/dZzQcM4I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656181612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Bs6bOTAW2RjbqyuSyhE46n+itfIyaa452dq4bSSVKU0=;
	b=W9oBYkamRJaIW59aEA79WZ+mi1BhqLuLD5Hw3kan6lnTaHOFQ9Iju8YDBzeAMcBy
	h1MJUmqHaXTRXeUON4qAL8ghigephKD0vUdR/FVYLjOh4/aG7ji1hjmYi77uX+HGxEb
	rSlV3DgDmPsnrKsbFKEuMpoPpjr8lcKZMfLw1e8o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819c1ddf26-ae68f5ba-df2e-48bc-9753-8c9bb11028ed-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7036c80bc104d86e503f063cf919c8b4026ded305468f830d812e99f8c52193f
Date: Sat, 25 Jun 2022 18:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656181612
