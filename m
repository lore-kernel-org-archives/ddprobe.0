Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E5917B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 13:20:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655644799;
	h=To:Subject:From:Message-Id:Date;
	bh=zp4fK4RZd3gvaX3sv/qYJwMOootwI3x0OjpTny3GTAs=;
	b=BTgxvzjnYcK/YQYV96YtwlFErQJKD3ag8YeEACZtLxaV3CAd0dssGyRzvn8wUdpM
	WCekLSOopoMxHykMCiOFqwQ5OyfisR2d1OrvY/isnkhPag0oAV8qmCkYVlQIcnucQ+p
	z22HXXWbAMS/qHAFaOC8qfUNVwmPYGEd6+cqjoIg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655644799;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zp4fK4RZd3gvaX3sv/qYJwMOootwI3x0OjpTny3GTAs=;
	b=cgbrp0qw9Sw54PWWFq4eYW8vJV9tAJjDb+ZHjBQEpL9N3HSKf3wqMvApf5XFWrac
	wUx17j1m/lYWsHv7SsKinvmD2jFpjn5SBi4VZbB9BHY0l50EkDN4UNt42P50Fxo4og2
	IY7FrH1yPnpm7uuAvTYo8xNm/B3NurXGpWO8zusY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817c1ec0fb-5b666051-5864-4358-90cd-47de1790f5eb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9c2cf4f82a19afc37bb5a026ebe7063455ff0b5c1ff7e52a59d594a7796e0a2a
Date: Sun, 19 Jun 2022 13:19:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655644798
