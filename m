Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E288C33E4
	for <ddprobe@lists.linux.dev>; Mon, 30 May 2022 23:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653952679;
	h=To:Subject:From:Message-Id:Date;
	bh=VdzrvZvftAtnU/ufKogdhxoJsuOv7dOlVzyX7JKS7bg=;
	b=LXtlvTI64mPpDG/bmaWyD8OuBYdJO0TEJrArCgJuAU07xaBGOMYTCfe9qOPm5pFj
	5WK3E1iyEUaOR3dmaEOqhH46H5vNGrEj2t7W6/icc7GG8kqWbGe+0sRt6kmu+dbrWdJ
	Gb7BxwrO4lTJMhpdw+GThnecT7VusiVzcfBuI7XA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653952679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VdzrvZvftAtnU/ufKogdhxoJsuOv7dOlVzyX7JKS7bg=;
	b=c35boMWDQc5o50Mbyb7vinZSaElxHUqsFZnx3oEfMOB6i7lR0TsSV/9r0CG0BBf9
	v1T/XZLiiuunvkonMCfFmYt5DlzRA+aTPZNvLkfjmizWF2KqbDk6buuJX0zQI+rBAug
	ZRwy31xWoU9FqpzFO5uvWR96hQ+f/hw86CPggTQY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018117430d52-fed1cb9c-827a-4496-9ef2-95e8105ef277-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9af6c716f80d8b5b29a02c545a5daacbb638db80a65971c0c7a621c8f60fdb49
Date: Mon, 30 May 2022 23:17:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.30-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653952679
