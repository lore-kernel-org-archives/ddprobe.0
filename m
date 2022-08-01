Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BB127F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 11:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659352852;
	h=To:Subject:From:Message-Id:Date;
	bh=ygB04MTdPKKzsVjfQBXTncG0lYU5NPPzejeRzXCxjxQ=;
	b=bkSXUqYQ4RDHrR5eb0jmkXHo7NC8EwIzVLQuRBTm5HIpbf+JJjuC4H3pnTu2qVE4
	VQq6Z1GaJHfVAGshBlN3mmogR59RtTnc1dtRF1+FMBgesduZZiyP8ejY7LhlQcuB4Yq
	iJQ+KEoEjSQ0cjgykkJV8wD963xFfQaKPANr8lhc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659352852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ygB04MTdPKKzsVjfQBXTncG0lYU5NPPzejeRzXCxjxQ=;
	b=Yg6YBnTgfSFIo9k3F/LGKG/y/hyLhhkX3slRanAZbZF9nQya+rYP4anowQtBUyRq
	p70sEV5cDfYx+m5cvnRFEz5Czku3R3ra0HJdsUN2oU0oPi+MHlTD4iN7vkQH9fMw5in
	2jRE0rEePCzMaAjw9O8n+ynoOfksaqdyl3xtIzJI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018259232802-0def1883-2448-4a59-86f3-cafe1bc9874c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2ced058afd0aa76029150e115b21fbccc6239f561ac2146bb1647f2f180de5e7
Date: Mon, 1 Aug 2022 11:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659352852
