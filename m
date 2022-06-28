Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34C98257A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 20:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656449212;
	h=To:Subject:From:Message-Id:Date;
	bh=ZrXx6Oozn2TxzC3dZO7n5GfeIW7+J+QV6oDT79f0ATU=;
	b=O38dANilKnkX5B9+c6dFb+0p9Z//h8pvdo64XBWiFzxx9Lda+l9fGOgsk7xAt8ER
	ZEqslN2zmrriFXT2Ws3VI6ECxvgRPypDCw8mk2gRrzsAGziTQk32uRZckgf87djEE/X
	FO45HJ5Vn3SuLVTHEdtS0mPBJ+sbIXc5vXqUDeCk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656449212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZrXx6Oozn2TxzC3dZO7n5GfeIW7+J+QV6oDT79f0ATU=;
	b=T/nTcM0fXqtwejFtdqaGScxAl93ESV9HEE5vAKWbO1MhvLs3H75SmSNF0z4zY/R1
	SjT+3u2j820uEtci3dpnMhBru0AwLGb3b5r/rHt3hGpQk+2n4En/BbnqEBP4Tq/X4Cm
	0CR7KpsLkKwODsPClT+Dl057p9jnS8/itFh8XZWU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ac111f73-02089cc9-a67d-4583-adb8-d4fd88a7d18f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 875f2d795a3c37aac671c09deaf748f1f24181532b89c6545530a4ae21cabf97
Date: Tue, 28 Jun 2022 20:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656449212
