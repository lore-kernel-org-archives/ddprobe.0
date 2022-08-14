Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3651F7EE
	for <ddprobe@lists.linux.dev>; Sun, 14 Aug 2022 00:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660437052;
	h=To:Subject:From:Message-Id:Date;
	bh=vsi3EZ3nculRkepmiF4PLoCaFTZq+Z8tpkH6TOXx6VU=;
	b=dH1nsPEb4OAFYJwg33HX6jCpvq3y8Osr5HHEyom0WRMgYhW3t+aokGa06OnVa6FK
	F9yodBAbvWd72s+Z2cMEBKumSN7nRm1UYIeJLaRxigu576PYN7yipuYx0qwUcp/jYwx
	BzkYNdDgliFAct2V/trc6P8/RyDvHNu64rUopUF8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660437052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vsi3EZ3nculRkepmiF4PLoCaFTZq+Z8tpkH6TOXx6VU=;
	b=ZsUwktUdLKtY8+Lb0zvUavWO2CIBct7bomNpzRZ+SBe1ymIKt+1dB5AILKV8WmCw
	uA/TEQNdFJIJ2bY/UGfcWPNzaZsPg0Ofvd6bNb97kp3PKxFvic72GZOrHo0sYCRqdyU
	rexU1Fi1/icZaHCCEWlRsX+sXbT7iWvaco6kjAcw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018299c2bc7b-00deadfc-e4b7-45ed-94a7-b8f095cc0bd8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b8f4338ee88dc7e23a5e8160c72333211ba114d6511f316cba39c995438e4223
Date: Sun, 14 Aug 2022 00:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.14-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660437052
