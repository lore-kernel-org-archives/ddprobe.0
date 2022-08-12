Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B73637A
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 09:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660294852;
	h=To:Subject:From:Message-Id:Date;
	bh=Ec8+Xk+hIqx8XKVPo9VdnOGxkhK9YI85ESdocffCIHY=;
	b=L+4PsaynyzjP+bf5fyXCukiWpmHqlRkn/X+kmsy7j3Ve5DjeAmT1cdSLI2Xi57Uj
	K+i7aiMzeZbX5uaCl+SpG4ZQXFxOGoNYypmoag5H/xz5FJcAbB3moCokqRPYr6taW4D
	588ev07GKZ/lSrHgSbtVOAy+ly/qlQ2m0TuI3OT0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660294852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ec8+Xk+hIqx8XKVPo9VdnOGxkhK9YI85ESdocffCIHY=;
	b=OoowtGpWyVTFUZxJ0aD9OCulpYtBafOwruH6PkYoOExAvGNky2bfKdQPIhr0LlUu
	EYM1Z/UuxzFZS7/2egUPWdb1oiqQZiv/yFSBaPh9tIUnpbUKjE/9vz/+RdrZooegMKa
	Q3uHKOSsODLuxfPBGK8xyztCgN/pQKN2TP98TOqQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829148efb6-970a4298-fec7-461b-b3b5-88c08005f4f4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c898b35c1919a717fda33f037187baaf4e01ca3dd1486eade323d36828fd4b81
Date: Fri, 12 Aug 2022 09:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660294852
