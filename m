Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5092C1398
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 10:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660560052;
	h=To:Subject:From:Message-Id:Date;
	bh=Aqj/ItCVCCCqPao54aUK/xWaEi1XJxhYs7jSGFEfisc=;
	b=FSwB0yx7bRyzfSkeighSpeIAPHHGAmYoomaSRU8ym0VnvWJzVTn44qE/vUjQFSyf
	+9Z3F4jSyg36DNuauEc23WvY5VeAdG92mEk0fepGCFnYVyn5FLNJTcV7Wd43kfOq9Ow
	R5xFiYG3m+zT2S8IcWKKhCYWWlG/Y34x+HrXwddE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660560052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Aqj/ItCVCCCqPao54aUK/xWaEi1XJxhYs7jSGFEfisc=;
	b=LAP+tOi8h4TWj3v5FsaT3zu3L4FRZQDsANBsibjDf8fL/F0uQFRv/dNwisphwHYW
	5QigEhXAz4B0ZNhe8avkkZwavAs10/rXvpiYy51MoIiELTtjO70l052pI7Q9aMz+M3R
	eeGQFl6sCXztc9WttaVEWaoL7YU21bM/3R9/7Dq8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a1179177-3aae7d84-c22f-4c64-a1bc-d84a792c0d98-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cb50069002effc9077dfa7cc3e9fca5ee20830f7fb758de79892682b35fde6bb
Date: Mon, 15 Aug 2022 10:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660560052
