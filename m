Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A90B1854
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 12:08:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654430879;
	h=To:Subject:From:Message-Id:Date;
	bh=JOuh19VJP+6txo/tf+HzXYRk0Obi2EA7xKH0utv6CBU=;
	b=WDVFy5uE+zSKDZL+8uIgx6L7L5B0oB7447nWdNnujmeKZCNA71dZ+WbaDjopwguJ
	DRVQaG27cyx2/YHRQol6iBJOhokbeaN0BVI1lrFDfD0oZAIEG/KUr5kWFmfhl70JUm3
	Rf6fFKK8g8uRRv2Fs4Z/uU8EFsqZEq31VmWxpA3s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654430879;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JOuh19VJP+6txo/tf+HzXYRk0Obi2EA7xKH0utv6CBU=;
	b=cKGzJJ1B5QY2Bjk5dhX8q6oMWv+i7KSu7rZaXkIQwHAMyLXZu/xnnh1ltEF8VjG6
	dKhOEIulTKt416cYvhkz5p7b26IUN+hX+XvLvHbsOOtk+V4ReWmOySCYnUvecKxQyka
	q3DTgVjb3GJPIdyLYHUJAXmV8iSybwhC4aLyx3z8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018133c3ce4e-f13674b1-6510-4853-aba8-0d38d9e81b0a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b4b837ff9b24100c1a096fc1f85b4684689803820a4c62cdcc55a4d71054f75e
Date: Sun, 5 Jun 2022 12:07:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654430879
