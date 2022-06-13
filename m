Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2166510F1
	for <ddprobe@lists.linux.dev>; Mon, 13 Jun 2022 06:11:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655100659;
	h=To:Subject:From:Message-Id:Date;
	bh=yXDRYJo46vidWDumWpN91k0qB1eNtUtw+/cGyG0Ak04=;
	b=QSjcbyLISYaXJKwsCFt/hM2AMSiFbRmvknL5ZtIkSIIM2Pa/uWf4eksHHAWXeVVN
	OoM8omnFCdVYF1ZdpnDs14Ae9VeNWyB3TyHde2mfnhSr5HFfu7pNUSTpOgItwp9RFhG
	gJX22n7o7wLbhetsla1XTm5ipJQSS5DpOnGAxSto=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655100659;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yXDRYJo46vidWDumWpN91k0qB1eNtUtw+/cGyG0Ak04=;
	b=AbeBbGQf5ypDakiN+Jnruj2RHRGMcQcbCva46GOVrPeo4G1z+MlgQ6eNOhsbw+c0
	ZrIYUjg8Wek/tGwjzXLfBgS51nQTzVQt2dGV8cpfW2tyEcj3JN3vfbadwlfeeubnRVY
	1YMZwSScUjCaTxD84fj3VBTi1k5XkoGe6qoqgw4o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815bafd671-f816ef98-b575-44da-99e4-97172372cbc2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e82c8632b65453d8c486e6fc598538d0d488094249a03cc15911de2f64b61b36
Date: Mon, 13 Jun 2022 06:10:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.13-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655100659
