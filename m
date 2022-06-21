Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E77AB7499
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 20:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655845019;
	h=To:Subject:From:Message-Id:Date;
	bh=a78yT9b/hGtjpriSDISmR2G8NK9s+FrkaG9LXXaGKfI=;
	b=Xw6C2hdkBNOSQzUUN87g+muoA0EaxXHQ40TuuGw85rk4DL/f+7iDijvTA5pVTInP
	Kz14u7p5ZHMvgOhPYq8uLLyJ4N3ZRT3OTcTsfjnn0nm46eRXOfCzpw4Bka08luCMCP9
	jmHLlixMTENAFFCxerb5llZLSwr+JMMSJFzK8dZQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655845019;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=a78yT9b/hGtjpriSDISmR2G8NK9s+FrkaG9LXXaGKfI=;
	b=hUnhyiPPAwi3iqgqLlcQbZwzaoS50sW566Lls7aa8Jna0qABBpxfF3xoeJZMK/ei
	1zPh5NFUXf7Ds78Yy/f0wvEL8wzlZDEx4HDdts1ymRi9lb0IN59aBTM4c22iziBB9vI
	L138h1EUuNmMeakgLSwQi4e+JTrmi4YUloK6GYjg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181880dde86-ebad8d98-86b8-44f9-8f64-b78ddaa8ecd2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0e356a827042e7e79e8b3d5960dfbec74819563463fd81b75fb270c030b3240f
Date: Tue, 21 Jun 2022 20:56:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655845019
