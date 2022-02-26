Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A51F03B5C
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 15:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645890984;
	h=To:Subject:From:Message-Id:Date;
	bh=L/ga6eQlZexoZpdrodp6Ak7zbnSWH55ojDuoVnCVuNo=;
	b=G/mtPvS1nLYS9rGG2tRayqmr6MbfnkzKFCrQgRZqUiSWTsok3X793NxgQNaHB7lU
	45mUIwHEEjCZAtJTyakf/3y+bcEY5Faf18OM8dud3r579TeTkChuj9gMkIfTu3qAEn9
	ZSlKwHiWuxcqL6yCAHDj+iwouQAx+0JYJa9oXERw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645890984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=L/ga6eQlZexoZpdrodp6Ak7zbnSWH55ojDuoVnCVuNo=;
	b=QtMCQ7EPSkBQFTHknec/H1qlVBVdSesYmYXn6YK/iipOBP/X4NZN06CBHjpR5H8P
	fb/mQMUpkLPOyM/qyrtooGK8B5iFAuzw9PNZqKAJQpgvDw8I0vzpeF5xqYQEbawjZ6m
	xwSi+p3W24J2SIC4rz7vDDqSpGaLYwDd88KkUYHg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f36bf5b14-853e7d48-c7f2-48d4-8cd0-1af7f022e98c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7cde4c21fe85c18051bd889a8bb5292fa7ccc920401091ccd221b05bf6fe77e0
Date: Sat, 26 Feb 2022 15:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645890984
