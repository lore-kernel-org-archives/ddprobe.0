Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55A097F
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 06:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659507052;
	h=To:Subject:From:Message-Id:Date;
	bh=z2PFcpuW4NCBm3oViURAPGVT3H0uY76W2pTs3powzGM=;
	b=Uu9s3cOJEFgQFHn8DvUFnbjKyMAYxGJ53WORnmvNBnfaG45KnJaQQEcAkXdPqE1e
	utWPpuI7+a6HxUrT0APlnde7IGmFG9tQqDeVBJyD/xTELGZPt5a+YpNvvQFop2o+ghf
	ynheGlsV8HT7DsordhFKlZwdAdslxllbR7D+tfYo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659507052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=z2PFcpuW4NCBm3oViURAPGVT3H0uY76W2pTs3powzGM=;
	b=Wpmu8sI0q+2BxhVtueJaUDElzgjcO3RkAvF9Vv/TK3xXAl8nrBHWQp3PEQrYExSG
	p3IQpsPGENTfdJY3tdo9UFg6WPUpKtTzpodl5RJPsLhG46qJAa6z6j1Qe5JyKSQMZOS
	2CnUeGUoI2pL4ffGsNzGIHDs6ICnQEUgPcpYfWTs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018262541040-c7766d4f-6722-4f2c-a228-199f29c09ec6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2fd9ed43a8716e9fbeac6d66d3beb7411be6cd569b3bed82de6a3de3d1a029e0
Date: Wed, 3 Aug 2022 06:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659507052
