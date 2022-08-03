Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BAEF7F
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 06:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659506452;
	h=To:Subject:From:Message-Id:Date;
	bh=E8tL4FI3nrkzGP41ysNPM8fcKrgyGGLqt4KgM8arnS4=;
	b=L5aWbWTiS3xlfkRR1u0MuZP0KRTJiSE9L3rAAJdc5xi3JJgVJcDXMCuicj8wGpfY
	SNY+e8A7mu0EmKEXSxHyjBmIFqtbdInXHNM+GJ5AAGREtCkP9eRIi2SowPVcs8NJbHg
	WDbjIMmIs3jMgdJhoTfLW4VGDPVns6wUSvJWx1mE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659506452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=E8tL4FI3nrkzGP41ysNPM8fcKrgyGGLqt4KgM8arnS4=;
	b=MweKoBoBGdnVIalob5sn/eksQhQuBhOFdQYmx7LRCxiSStygOXe6J0KBQ/vhW4Yc
	N8HWpI4XKxavL2YHaHp5wzyaV9inFoNkg8vkQ+GZf3C3SQzeQRYhG6VfkPRjAcryvJo
	ZUlcXAgr4Y1giiIAFPU/QP8N9iy89PDFQRvRiBso=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182624ae86f-80aca79b-6735-4ea5-a713-bbfa38538756-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5a4598faae8441172c40d58537832af2810649891486275921cf889d8e3d3395
Date: Wed, 3 Aug 2022 06:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659506452
