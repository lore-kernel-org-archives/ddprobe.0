Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E5B07C
	for <ddprobe@lists.linux.dev>; Wed,  8 Jun 2022 06:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654670519;
	h=To:Subject:From:Message-Id:Date;
	bh=Xei5Wf0BDMpIHkjaQVj0JydiWruXSHvNhWr4Ips1Hy8=;
	b=SMVgZpL8U1nvfReduX7i0v0bjMmEi1oh+hm4rgVtKMLQXI1nVtAjERGlS+Dqu30I
	OBH3LwUy1vbmHHxpjLBeDw9KwVpdENdcBF6V9JJBDf2HxU3GrTF8iijowaTwQFDFC2/
	r3W4tjybpcj2EgbE4H7ErTVKZgqFJhMlOTM1N6MI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654670519;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Xei5Wf0BDMpIHkjaQVj0JydiWruXSHvNhWr4Ips1Hy8=;
	b=WI69t7WaYG49oZa1P3Y6uz8bUHrR95s2CDhBwMXrFmkXVjks2i5PCQwuAk/gUIqR
	k8jBtymx/CbMaO0AU/W6QPQSsaT+YNoMRVRXzar8GVXKUZ1AcP4t3wT0Sb/wXWA7DBh
	qv8JIxoebr0rvU7Zq9FD5Eb9TiZlA/rUk30M5b1M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181420c6bf4-9cb98df7-27fd-4718-82ff-39446f6bac01-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1101f0caca98c819e48861a9fbb942863393c45f84c4d39a3d53be2eeb9d9569
Date: Wed, 8 Jun 2022 06:41:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.08-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654670519
