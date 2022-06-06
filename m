Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5FC87C
	for <ddprobe@lists.linux.dev>; Mon,  6 Jun 2022 16:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654534079;
	h=To:Subject:From:Message-Id:Date;
	bh=yHvzLsxOQ/aG9Xb5G4IlMmfgb/xBdJk2aUxBefyOCQk=;
	b=KCwMkus+BoUqacjNJlV4N2jnOKTj1VLHlU6ldprXsviPCX9IMu+nRZiLv0F4/QEJ
	ZrpcXMDT6u/k2sZXWLJBM69x5EWUeJuNjRn37W443khZ95x+X7uEhR9F+aDD4rdTinY
	zSx9u8INAY4u3yRUSK/2/Q6FWq35LQBIjiU3OBeA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654534079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yHvzLsxOQ/aG9Xb5G4IlMmfgb/xBdJk2aUxBefyOCQk=;
	b=CIgIvnABbcpCOT5I49yv01n/QilpPF0HYvpGDZMktAbb57Jbvp3IZJ4KoLR5tMgC
	9caOXDzYCw2uqk0+FCKQ2aUGeJsu7SjiqG4EzyWk5PsCT0pPfekvbIiAE6ynATTzbMS
	B5xMHA0AqnxbqpXjK3Gl1LAfVK1qnNVTNcEDJcBA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018139ea8326-4e677014-fb18-4c36-a306-6c4f533d28c3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eaab4f3ac781480418abcbe4422ad66be280406e4ee892b661ff1c44edfd3f9c
Date: Mon, 6 Jun 2022 16:47:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.06-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654534079
