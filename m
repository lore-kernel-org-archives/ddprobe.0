Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0977F257B
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 13:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661001652;
	h=To:Subject:From:Message-Id:Date;
	bh=h1HuLod+Bw6yEN0JdnykcX3w+Th2niV8/umLJcddlhQ=;
	b=Ej6GdQ3z7ch2nGCAwaNOmplEyov+mmTo82vonpB+A2mUfrMA3tKXyMumkg9WGyUg
	gDaNCVeN/4dzQsatUYdT7uE0gAVq5IN//gSji8p4UjPWcSSaJTwUKfikxnwh8ejHSYf
	9rLNI/OhGG4jyUIOJ89Vp0ULEygf0G8dCGpnN5Ow=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661001652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=h1HuLod+Bw6yEN0JdnykcX3w+Th2niV8/umLJcddlhQ=;
	b=aHJJQXIBJByvkcePi+kU6TWkqXSGgpnQKL+l6x51597tYByAzIh6ncNi3D6dMjQy
	s9DVdeBDvJvx7KQdfucJ2fyzsOIELl8Hvo8NT0vw7KkTHH1AIQQni3vnv56qWrQPAZ8
	ATUGIG6inelgfj0iSCL/DYiIxW7qytKmxHS4v6lc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bb69d957-3b8b8896-fda4-44c6-9a29-d16a295d8505-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 37307b2277c5cda0d8890076387ff89d3b18fe7afe0e0a1056cf49a3b1a52f98
Date: Sat, 20 Aug 2022 13:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661001652
