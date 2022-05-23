Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 272F636D
	for <ddprobe@lists.linux.dev>; Mon, 23 May 2022 03:17:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653275819;
	h=To:Subject:From:Message-Id:Date;
	bh=PkgMkHOAmm4RToQ+I0xTWbK5BLTfWOwczpf71vp8EsE=;
	b=lQU9uLNJD2Biv3mS0WvTJS5rszsY1suAKpSvKYhe0knxa6DrB2ceEAh0C/COVBgp
	nTywGkv2I8nR/UGtr+O5F/ROr7XOz5O2VpnoPhgNuaZM+tjXn2EWaMNJVBi09QI5bo5
	lZ1hYbeTWV2zgHkXAwgcDaRAZsl8OiO15WZepyBw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653275819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PkgMkHOAmm4RToQ+I0xTWbK5BLTfWOwczpf71vp8EsE=;
	b=PO/fH1l6SW15gJ9L5vfQldbva5SCn7qQujVAErKYq8d6jzgMnGqKML4ewT+t4qJ2
	7EzUXY7WDiEyjslW4sBLFIYhQGKq7jgRt/a2tlv0lKqCE9MAUH0MMHuI+9tY6kfAkyp
	sYs584MIMopXJ7X8iYp/oq8zvE+fg+P8acOOhbNs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180eeeafd8d-45c2b58a-f0bf-4360-af52-5eadde027a2c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e4824269cbfac09bcc3fb5a1884572da5585aa3a9b25024ed010543cdd774eff
Date: Mon, 23 May 2022 03:16:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.23-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653275819
