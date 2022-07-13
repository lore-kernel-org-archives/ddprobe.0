Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BFF34681
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 15:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657726612;
	h=To:Subject:From:Message-Id:Date;
	bh=BkZA31Hv91bR1Vd56o7o53wsaO5ivaXezZh4352c+e4=;
	b=OHGQ6zcnNe1pthfHhijv2MHjnmcs15bc5yJY93T3rDFXhmcOIGFJxgS9lM1/Zwi4
	ujxaLbn2Lj5SSgRS4boOIGLxwLMgYCSRql/nQx1GnMh9+XRPryN1DOB6ENWV1og+cqD
	MLTB2LUnLg6PJaK/Xi8of20xyn+g8OP743QTATCQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657726612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BkZA31Hv91bR1Vd56o7o53wsaO5ivaXezZh4352c+e4=;
	b=CfAuZd8Z3u8ZqM0ZXKQPNHLjRgCRNgNXKLYz1/raVbDl6uGU/CaeqK+guiI5FdI4
	I2/VgtNGaiJRXX0eIkKJMPDHUsTYdTWVlZBEA/W4Vuw6WAjQbppGLl0eWtCOpruwWJi
	mOI//uKrLf6UlQSQipOabWDzVjyZkU4KuZpKPD/M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f834b35e-2c00a254-408f-4d36-b374-aae0d0298bc9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9a8729abbe9f2d42df9cb0171714294d7b95a8183a1c16f6e96fea54c16b5f5f
Date: Wed, 13 Jul 2022 15:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657726612
