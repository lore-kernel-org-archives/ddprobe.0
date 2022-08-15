Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47F151103
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 19:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660590652;
	h=To:Subject:From:Message-Id:Date;
	bh=B+4AYfqGU7g6eC1tBI4mqaAZElKrdnQrBRATrdvMgaw=;
	b=JzOrjbTpwAzMcNqGKxf/r52YeeyQEdyDYpBWg2W7MlguFOcXuBR4+vFhGHPN50Z/
	NN/VZs/qh71WJYh40SFUklQ2YM2vOTCnjb/E0HIi5/vQ2UwfDG+5or2sR5RUk50RCBj
	mTjmxUY4e80Ckso4r/RTy05PrpJtQIYN6J9CrwtQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660590652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=B+4AYfqGU7g6eC1tBI4mqaAZElKrdnQrBRATrdvMgaw=;
	b=iKn88Q4d2FVSC7vrS/qbKMYoDnKEh4UAGRB83geUJhBWjzXHMpNwVTEkr1SydpMv
	UWNVJCtWUJ03Jhrz4qXClDEamEDn1tYOA9gJOJbyOKcLpdc+XUoK7VGnu6LmBpiyDX0
	wyg98oVBTKujXXfRsXb94qGyjjXm92GH5ovRb0Ag=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a2ea7cbb-f849cf68-9444-4da8-9523-e03d7dce65e6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5aca1a29940cd1930bc4460285741514ad01958b5554ca2008119fa4981764be
Date: Mon, 15 Aug 2022 19:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660590652
