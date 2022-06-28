Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 066E13209
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 12:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656420412;
	h=To:Subject:From:Message-Id:Date;
	bh=T+rQSBgK8+0NNo9RZTRfxYK5n0lFj3jqxFsQ1TCFX4U=;
	b=eEmaIz6FkDPBuzbOw5XyGoaee34S4qJ/AZ7j3aPjWT98AV62KAcsXdLU6NZsj7+1
	GotsSkJwDzZ2crJHHCb4Bu9w58dS4rdkAmK5J+H83eCEbe4IInVHguNRkfhU1TQw5Jy
	x+nOn0k3UQWHE5R+hhZMD5q/OID3zOng7oXs3U00=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656420412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=T+rQSBgK8+0NNo9RZTRfxYK5n0lFj3jqxFsQ1TCFX4U=;
	b=ZGJx0WGU0wcrOQrV0XITUA65D3Li3yb7ahx6vHLszlusEaqrXQeV4I+1jdqn6ANd
	SPLrNs/HaRoUMA4b2qhgz1DOhiR4jjcIym+OZK4hxyZFLrmumuRErqXkmamoDwCPuvp
	klRovldjlWTRfzyloZZDaaIEOiKVMOqeBPSEkHws=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181aa59ab57-e35b4cf6-9faf-4002-bb7f-b1c2945bc525-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1175afe3de90789306164cc1b1a97352cb7fe7124e0b76c797355e21bd7df0a5
Date: Tue, 28 Jun 2022 12:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656420412
