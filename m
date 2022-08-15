Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D535B10EA
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 03:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660533053;
	h=To:Subject:From:Message-Id:Date;
	bh=lg9v8xzJ0Ffn8YADfrMFJQRNeUFYwx/ToEMFjwVeGyI=;
	b=aQRSNOWWFAtxLv8L5v93sK/yEmo5ZRtOMelKzVEGOBlDar479zWeN3N48aymiCZ/
	uCxqHGM56EnRwHGG1jwCYEkx9v795VLo/4GOxCr1sTC2dT+TdzlbmNonCu2PhrZtRe+
	B8giTK2FOXAcD1Ko/TZTyNDWId6roZ8qOOdUrbO8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660533053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lg9v8xzJ0Ffn8YADfrMFJQRNeUFYwx/ToEMFjwVeGyI=;
	b=FQW/34qSCvhI8CD3C4ia9EqQbSKHmOzcbCUWs7d1GHsa+XVbZJXwubmiEk005GiM
	ynCXUQuhZBUjNmW5FYnT8UAnSGwcO3LHExu/hAlsvHLLZRsEB97fApZMNrA6uwA5Q49
	SUg+qQh8ZJk88Ke3kHq5ZyOs+Iy05QIxsBqXCwOI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829f7b949e-2c22a0cb-599c-4fb8-aaf4-e7eee5221a82-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6c4f4f8122013638fd949bd5d7d9d99e7bf09d8b59a0a57d0a802f0bb242424d
Date: Mon, 15 Aug 2022 03:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660533052
