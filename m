Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B0514420
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 18:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657563412;
	h=To:Subject:From:Message-Id:Date;
	bh=m42glR0kYXse8XTRLPoCg3qzT4s9A+Vv3LNdNdqja6U=;
	b=O7lomA945Fh9dpg9G/1Wkba7x72VgxeaOVL9dYHXXgZKUgDi+LQL9zqaZMsGU/Yp
	PAYGIAFX7urjK1QPIXA4vveW8czOjTCw/hBlFdbmsLtBb8urOgS1cfvLj4VKpcF+bZE
	WKniiB0yQ1siNXXTevGALHy6ILo4rY3bjLT2NLvo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657563412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=m42glR0kYXse8XTRLPoCg3qzT4s9A+Vv3LNdNdqja6U=;
	b=LgHFbelSKtFdU1S3aMaWjCHbxjAQrwATjKLogcbbW13fcVNzH2OoXoUOEVeTcEcJ
	4y1OnRzzis0nc5kNpk23gmMM8tkAs22/GbG4eqxLCeo202GFaAFWtpwxwoE/aN1xn1Y
	Lu1cmVmFB0kckDF3X6xzhbVMCeeAXVgszgJIL7OE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ee7a7744-d6061f99-1786-42b5-9f24-eccfaa3a786b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b3d13ab7fca91a52dbc29f3686d9c9c0a0cdc8970e2a140b82e6266684b4c0b6
Date: Mon, 11 Jul 2022 18:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657563412
