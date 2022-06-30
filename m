Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F5A36D19
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 16:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656605812;
	h=To:Subject:From:Message-Id:Date;
	bh=nxQk6VbM9Xei3PmUrXjwZWnw8s2A4uYEr+KCw+JN5Dg=;
	b=W2HLfl1Is62PYPnvTKWscdLtxIX71y/pm0V9ZVs4Ij8sRdeHbrbkMCu1UBzO/k7x
	ozqBd5i3q3oQozaJ4HTH+P3oC0+IV0bCKrV3f3ct2iOuNJe6JBLwwmqj5hsMb6yOk5L
	ezHymbyj4fAilP0UANpe5uZP6xOXdPcF0haMB/zw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656605812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nxQk6VbM9Xei3PmUrXjwZWnw8s2A4uYEr+KCw+JN5Dg=;
	b=ZtWPfRmAieTr6EtsfSxRZmj+aPpHCl1UWbZBh+tamhoQ0cHkxGk87H9W8ZzBof/o
	D6RtqYy4yoPGhvy75HQoiAIgopnOu+HLG86ddUVZpO/TbFRvJaPhecLwmx18olXe9XH
	0JjJDtugAiHp+/yxt0B5QMMH2QXfiFeuE57qFupk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b566a694-69807982-0392-4bad-91fd-d87ab4a68e15-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f57c41079e0523766f50fdd5914f40b196bafcef259db9726777bc621d210381
Date: Thu, 30 Jun 2022 16:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656605812
