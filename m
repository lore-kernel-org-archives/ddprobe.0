Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D26438F5
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 19:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647459685;
	h=To:Subject:From:Message-Id:Date;
	bh=x5MsAYoxpnvqL438XV7lVgbN6IK7sVb7+b8bRrjsAdQ=;
	b=i/FC8DlODRtzaZLo7vk1+yPwwcSyCsZn4j4YJ8Q4azERhBS4f1w2HfD9IIIr5xKg
	2xX80ojKKDFm/03qrLa28BsTU3TTpuB0y5fk7KtP0dmp84WMD1Ob6f2/OVacR8rzLwx
	5W5WXV5n4H41jMRM/Zd+pgkz35z9YG/Tkf/VPj84=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647459685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=x5MsAYoxpnvqL438XV7lVgbN6IK7sVb7+b8bRrjsAdQ=;
	b=WTodE34yWkW/ayyPO0bQr7WLpYvtMnRPKEvtfYbPw1FP11kZjY08AgOz8d5Hiy8K
	qJxs2PT1dojqHgMfCZAJ6Zql7VfBgL2+JHlzBw9HZe5+iWnJbI717/l4ulyQqN1B9zN
	2+ZgnvQJgZPuouy3Pz3lbcDQQv19pK14p1mD/9es=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f943fd228-859e420d-205f-4da3-b262-57be5649e290-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cb33d59204aa96e077484d8eaf64549e7f2b62e04172599915c2728707ad80af
Date: Wed, 16 Mar 2022 19:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647459684
