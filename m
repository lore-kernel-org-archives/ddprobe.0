Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B785210C
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 14:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657203412;
	h=To:Subject:From:Message-Id:Date;
	bh=KA8jTfa5vcJcCr1zBg0rahbqp8XgTFgosJYPY28nl9M=;
	b=ij230lDdJln0LQ2Fc+M9dOxumJGaKHlo6dB2tPXyFYlRiLdPaikF/ZxGJYUhAAzK
	s2cIhnpU+s+465U9VWRroBQPWriAwDgg2NCIX8fh7JjUC0AJaxULqp/1awiikA3c6RG
	iXZX5PVA74/QDivFhihh7yWnMoy6+xC/svOPbNWs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657203412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KA8jTfa5vcJcCr1zBg0rahbqp8XgTFgosJYPY28nl9M=;
	b=a4vURjpsMRfGbbtoeaQiATaIq+1PSSSHces3VwYtaaUOjqP5jf+QfGbGDdcKnAZJ
	j12cOTuv4TrWA8Z4zsBWUR2NX4Ub9A/BT48TRTnOaD1hp1CnoSKDFqvYJ9Pqijya/m3
	xcRE7ph8QT9mnrrjiCerkCv2O61zcQB7fNM9GSZA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d9054d67-0cc7c830-d209-4249-b6ff-431d059141fd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 63b44cd833ad260948f4d3aeba0620df156db1567c6edcc66f9d10ce737afd1b
Date: Thu, 7 Jul 2022 14:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657203412
