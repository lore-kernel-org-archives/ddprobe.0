Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF5A37A
	for <ddprobe@lists.linux.dev>; Tue,  5 Apr 2022 15:38:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649173138;
	h=To:Subject:From:Message-Id:Date;
	bh=BxoymB1G82UiuwlWgQOeFxM7lnkh24PL1q9GdvaVuu0=;
	b=XEfZ48ta59/pmTw4d3zyvQyDFcns62HFc/ffF/NribL0o6Z031RCzarxD7LIcQNe
	82XR1zplowCRddwUkWPhJkuaiHBL2N3s24ykOH/Nv3JdLMWxf1+HFukfUN621F4aLYN
	PTshF6CcTRvAXxKHG5oabkw7znEPsmQS17AtTbzk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649173138;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BxoymB1G82UiuwlWgQOeFxM7lnkh24PL1q9GdvaVuu0=;
	b=RDxThSTQGYz7xqHXplBhjz46At+AwY7g6qZmow2T0Ik+Tl44yChgGWpn8j5mmbrS
	0pDwC+gZNEiOXH1n/7v/AsZ24cedfWpBZT3Grk4G9sBuovqXYiK9NRzkSY+JTx+EHDO
	EhlkS6oHcEZtxl/7keisDRPY0zGDMRtEYC54TAxg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ffa610b88-65faa401-9237-4a0f-b14f-4fd59b53d932-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dddd5ee32b8eb9206653fb9cf490c242b734bc774ddf505c7914e60ec160f42d
Date: Tue, 5 Apr 2022 15:38:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.05-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649173138
