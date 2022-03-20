Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ACCF258A
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 18:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647802584;
	h=To:Subject:From:Message-Id:Date;
	bh=doghaByK0+YhLoimj9kS6vFDa6irJyvKfGPMrAoQ5qk=;
	b=jsazYCZk0I8LtnxX+NsFvdUaxkRyunhG9RUsWrRgH2z1kQn3uM3iaBkOTPp2U+3A
	Ug7Nhjw6FVo3neABy5WsgMWj2VsNuK44K+8Ba0Rwikz6f3FCAyzprKPb0Pt0ljrLnCn
	C6Tux3a8WKmSZXJAmnZjDgusXM/zIQkxUyJTZ9SY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647802584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=doghaByK0+YhLoimj9kS6vFDa6irJyvKfGPMrAoQ5qk=;
	b=kz5gBJbold2pjCJcQjC2RnRN/QL08xznvfbekL5jnwx8QIXHnry4ju1mGF7c/5yQ
	Y6X1sH+RUgZ6qAaMhdGpXRz4zJj5UlTiv3MpliAenTLiEsSJwl61wOA11dw5AxNRTMC
	dBjFnqvjM6HTrAnyKgcJZkb0gHxx2x88/opsKz1Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa8b00e8e-a065c6c5-c33c-493e-b8cf-2788ec2872a2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eba87683cc669b27a3e32889863f37d9897c86589c72e3112bc54a6aa5bff50e
Date: Sun, 20 Mar 2022 18:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647802584
