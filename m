Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 567E51392
	for <ddprobe@lists.linux.dev>; Sun, 14 Aug 2022 17:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660498852;
	h=To:Subject:From:Message-Id:Date;
	bh=hCRSjGjUG1mh/M3E1R0Xo//rKAw4/z55ln2ZOM/ijMU=;
	b=ZZkYqYBVPQYfo7MA4UfvsYuN/H/6HP/Np4JY7vOZXOVccJwmgFh/tMu4kLu9c4ql
	vtXWfcjFX7w2eTfNgRyddEtx6tRgx/PKwc2WLrarDHdFe2i7uAORfyYQFvGmlk/9m/v
	wwegEWBgw392PVziK4AWfy6hdRzhhhoBFfbrRvIE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660498852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hCRSjGjUG1mh/M3E1R0Xo//rKAw4/z55ln2ZOM/ijMU=;
	b=Sqacjx6y5ajnTaMgFfiQRGBC2nl+5kX53+4Rv2Eq6kEsxbZxOCaYyKpywrFi/ov3
	wCj37qVHyuIoUbofcjToCkOd2EuPvtdM4dcaLUDGiBDnvC5zm+kGht9WwFogzTbyXMd
	7xVAvAlYGh6bYfRX7OHUtkmhijpoYf53W+Lo66MM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829d71baf2-974089a9-a4df-4190-90df-1a332fa95be0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8ef863530b8fbdc220529770251b64278cf4d62db90fefd3f2c69c31be56003c
Date: Sun, 14 Aug 2022 17:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660498852
