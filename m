Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5181C4683
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 18:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660846252;
	h=To:Subject:From:Message-Id:Date;
	bh=V3MEv1JVNVYpv/rqgbtWkaEf+pfMPP7xFZTWbSPtouI=;
	b=N/wnJO6fR3roVLA67glA1hLjc/z5aUbWlaYGtFzCaOFegp3/+Dydfw5DzymGeFns
	UvsJmSmlfT02qc30J8w3MAOymbTFn5RQc49Gd1N3ixD6V66D7uWaCYpuun6kkJswnME
	DTXEqJ8RvGrX9HXrs4bht3en23XxrZ9uSNTqZAT0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660846252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=V3MEv1JVNVYpv/rqgbtWkaEf+pfMPP7xFZTWbSPtouI=;
	b=T0aqHo3RduKxVDt2FNGWnvYdjNpQcBD06pC+DHYsv7ltiLsphILq54SAGIrH40XH
	xW+Ks4gUN0tus3vUonnLOD6Mfni9UrzBBvjgGX45aFbpwx7V/jchMVC0/8zeiWd2sgK
	HdkKANHS0Smj/2PFQX0iSaGo1klHpWSxsbGwcSzU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b226a201-aba293c1-173a-4305-bc02-ec5bbf753bab-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5bead947c5ed50125450845c1d3426797088ef897d5af29cf455775ca0c66ec5
Date: Thu, 18 Aug 2022 18:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660846252
