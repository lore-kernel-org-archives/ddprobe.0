Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C219D28FB
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 19:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645818385;
	h=To:Subject:From:Message-Id:Date;
	bh=JIlpRp6Uhs1cBAS5eHlyXSrkAqSQcejhZF3kM/3cxMQ=;
	b=ZwQmCrN2Ge/dc/ASrF6ZggWms1PNeSQEeBJZa6oY4w9oVcQi9S2Dd645F4xkq5zj
	NmGiWrIPnOX6c55L6gkJmtltlYHzoZxKAMm63fLNWr0q+sNZWsjwWnBKI1A3XznqFIi
	6qUwc+dpsSFbdHUhfIaqdCdvdQTzi+22jHKIoXAc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645818385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JIlpRp6Uhs1cBAS5eHlyXSrkAqSQcejhZF3kM/3cxMQ=;
	b=JUbGlkX67xwjBvdbog0K8rsBXVG3A4c1BVqueyrnFBVq0codas19YyPJ7O4I+7ys
	WEvlaYcHH49skcfTecFc8ql5YIeNcsWXAuj9ZbmgU9VSXF6g52LmEjwOTN7XgEXkaHO
	K1koe6XiN0et3RCA1Y7CSX1zI82A7SA+plz3mbbc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f326b9168-cee53c6a-ab87-4196-b1e3-74d03e40d820-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a7f7a908f812e8b44e46664daf370517cd309330a1aabc5d1cac92f3e8fbc2d1
Date: Fri, 25 Feb 2022 19:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645818384
