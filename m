Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07A9C7F5
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 01:35:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655775359;
	h=To:Subject:From:Message-Id:Date;
	bh=vBKu3msdZL13u1Gxv5xzkbkfJBbSUXcpkJkFwJ9fPnM=;
	b=d3f18p+cM5uq2UTRug+yzWgWWMuyspXBm0Vb+OSYQ9Vomic7p8D3TY5d1+5dyceN
	WNhW58YWPXP29qvuTXwyFCTALYrBg+ESJuSoyCoCDi8ULpcjN9DyGmR4+NMqsRR3U4P
	wyhODbIbmsbYSdqrNBbFJa0Wqnm7JmxMR0GcWAcw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655775359;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vBKu3msdZL13u1Gxv5xzkbkfJBbSUXcpkJkFwJ9fPnM=;
	b=hisxZQMYupZ73zFi7OrFm7W7ePfj2PnGnbFK8/0CyoKMKmf3yieymmXQUfM5q2tl
	XPgnZSKPzRAtLjI0KxXDV673C7HTkveh1+iJTKOKhg44EJ2FqPaVKn+BmzLc+hThCez
	cZ0TGSZOziYmGssu/o+HV1zfooHQ2L5VDh4PH5qs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018183e6f14c-6eff39a7-3dc7-4fa2-9285-8ccbfee1c80f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 399d4c31c9270e974c36393d02ada4f5632fa2b74112a865933187f548d1fdab
Date: Tue, 21 Jun 2022 01:35:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655775359
