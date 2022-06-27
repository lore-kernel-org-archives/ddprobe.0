Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD2C94C65
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 22:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656369412;
	h=To:Subject:From:Message-Id:Date;
	bh=ntPBeFPrV8klN7A1/mbOkyOzlgKQD1N1gwsp9SrvW/c=;
	b=Nw5ZaVGx2fg1aRpR8GlhUDOrcQk7SDKdEZpOH/gnw89DHl+ta7vlFVomN0JA4iee
	kEgC6Hzg8Df3YRD4KnePO/9vob/YGBgL72vsijmkL4cTtMa7cFmF/+2bXbRF65dOIqL
	lzbyw3ua2xAoSdVZcFbPGsYoQT7HN4x9o/rXAX7s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656369412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ntPBeFPrV8klN7A1/mbOkyOzlgKQD1N1gwsp9SrvW/c=;
	b=TOI9XriG9OiRxXURam8p7MgrgmIqPCSTt5eA7cycAh27m6Xi/V1h2cgoufk7fSaq
	0maaFJTojhA2NppbMk2nU6zKNblGFbrzp4gVDNuxVH6eMHU9gZtiAnpeHtDI+eL2g7/
	kiJ93k+P/ySMadWbybXvvhAt2bk7HDyM+yK/L2Es=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a74f78dc-65f0584f-bb45-4779-a2fa-b3108aa228cd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7d0d226c0838ec24341e709f509d232327c42d3bd9cf607458979f10bdacae9e
Date: Mon, 27 Jun 2022 22:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656369412
