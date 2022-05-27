Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 538B04683
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 01:15:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653614099;
	h=To:Subject:From:Message-Id:Date;
	bh=YXsik6V+f3/DYrQ8A3DDhw2wXHCxVtyB97BpqNCeTfQ=;
	b=X5IHq0ZHK8nLhZkfx2K9+Z/71ewGVAt3RnMZOp4W04LoYG/mNTL9MLMevimdupMb
	oS9bnnp/CR818ZPc3RXYIMA1pVpaqBz6lSzLde9AnRwgGUqJHqnh89mgsurLArfLg+a
	JbC38HHU2hov8u81PK4VFYC1iJLdxq13nD7C8v/Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653614099;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YXsik6V+f3/DYrQ8A3DDhw2wXHCxVtyB97BpqNCeTfQ=;
	b=JY4twlPimPyscuh3A9mdGQutfn/JcX0Mi198yt8IKzZcY+0Dcy7EkMuEEwrfBqgy
	EogWnkrXfudV7I/0Bgh4Y4WlUcLMlVbwfcCXrFsTXoOlEGGghGhiT4/C/tYGBP/PWLf
	B1QqM7AvQ2rGa353xVzls4/7JnKJnwVWjnb0dmBc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810314bb51-707168ea-b3dd-4885-840d-d30f547a9519-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 152ad7b92a2aaa849fd9e590821b2f39186fde3c91e47d047e5caa5b948c6560
Date: Fri, 27 May 2022 01:14:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653614099
