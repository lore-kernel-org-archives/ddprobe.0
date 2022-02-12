Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D76BB7C
	for <ddprobe@lists.linux.dev>; Sat, 12 Feb 2022 17:40:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644687609;
	h=To:Subject:From:Message-Id:Date;
	bh=0tD0rinKyoLvoVBLe+r/t9D7apVwGB0hWo07q3ZUr98=;
	b=Ggd1h401jiw0vECU4qV4WopsivsX7ly77Kt1Z4NF9duYHJFvfnGTeI5LmefZQX+w
	bdtkKh/Oh0g0VqZztwOMDCm/S39I+47PcY2yekNo3C15an6QGCVdiNezOikvEczWnzO
	reN0lo0Y/4nsf5FXuEnwxO9ul5pDRREKhyXsqVdw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644687609;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0tD0rinKyoLvoVBLe+r/t9D7apVwGB0hWo07q3ZUr98=;
	b=VTV+NYog2PoQ2V/G+Uty5t/4Q9W02oEQRZ+7h8+Y8/v9ZfdfyFMtvCj0l11/EcXs
	eEqmbWhdnd4XdUN4XjKqelbiyZcIZVWTtaIkdokBH/Bk5oe71cLwQk85yJqwvMqfM5f
	9AMBBn++OrN7gXLJd5uJIaIp5qmxqaRD5wdLr8uY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eef054bfc-979dea8c-9f6c-4984-9b8a-664358ee327f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4bf8346ba77fbee2d524e7a10c15d1dca2913203579ab910c4be1ccfb71269a9
Date: Sat, 12 Feb 2022 17:40:08 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.12-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644687608
