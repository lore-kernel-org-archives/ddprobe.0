Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FA637E0
	for <ddprobe@lists.linux.dev>; Thu, 31 Mar 2022 14:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648736458;
	h=To:Subject:From:Message-Id:Date;
	bh=4NYKEqzpbnwU5CW1dVUqJGiuBQRNEAWYYjCny6aP+t0=;
	b=N0g3FyTSFzF26opyMSVUnBoAqo3z3bfYkjApzIGkZHmmIfmBBQ7a9Udd5S0lwS6y
	55JwVHXNGDk+px1OsfpSFJTRVSGLo+HZUxuiISyeixtgg5Vj4/7RnKPVAJwCO5lE6/q
	49CwUXL32g1BHOoVWhmdzGHA7fxGphNJQZTuchuo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648736458;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4NYKEqzpbnwU5CW1dVUqJGiuBQRNEAWYYjCny6aP+t0=;
	b=a3yJrgfJ5v8+QD1T61h43cp/xA1NXjjAIzg9+Y1OgbGmnZLTBHq9PvjCL0Wz8OBr
	7fbbiMQOz6qvWsRSZAJTxHB6qAS7FjIooJROhCV9Np1u/EYNdkyzAF3ORsmOxrgfye/
	FKxLhGGMOKomAiLvMbL0kRNpQ8BH58gxAZ566QoQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe059d602-ac34f44e-288c-4227-ac7b-b1c8aedd5289-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8c55b730777685718040b3985b0abc8e54cf6c2c748685cf43f5537b3b694526
Date: Thu, 31 Mar 2022 14:20:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.31-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648736458
