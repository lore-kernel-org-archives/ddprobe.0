Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19D647A
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 15:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657986412;
	h=To:Subject:From:Message-Id:Date;
	bh=w90crYeLb+S8KGEByhaODR6/CBTsinBDL9BmsThU2q4=;
	b=g3QQjLn5LOqmg9cU0l0N8w27EVq6vcH85oXctl4agIhdpd6WCDdBLCMEGOBi8/wQ
	d364kavitRecOJw+kDo1ugw8950Sz4tXJP1JtOMEExiLduJwvIsqEHmw1BglStsVBUv
	9A71FnxgPXtsGG/ldDhJCDbda2ViE/NvtwiLih1s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657986412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=w90crYeLb+S8KGEByhaODR6/CBTsinBDL9BmsThU2q4=;
	b=jjEwBc8ZeCwOoEtY09WyXys158vj+M+QbwqeGPMAVOMwWBPAN0q4Noe7x6kmWWQv
	PBe0VMMFKv/eqcV0eO/0oRlSdjUtuGRQSlJTzQksMX0Wjf5pzYRJWBpJCRFWCzmsaE1
	TySrf7OSyJ5LFYhcI6CVgpGn3cQVPvgLlhVFOq+Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018207b0ef33-e47ee7d7-b7dc-460e-8a13-9fe58a388b3c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8c24f090f22422e03b79353b6435a266b73a778f2cb9992503f3e10fc2b5f44a
Date: Sat, 16 Jul 2022 15:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657986412
