Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D58A193
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 00:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660869052;
	h=To:Subject:From:Message-Id:Date;
	bh=KLxSzB/awXQTOjPhez2T3NezE+5XDdozxL0nFFRjPO8=;
	b=B4HnQMDExdVYZjRSozY85My7i2Pbj/fQ+udl2QfutvdGYjGrbxj2JsNiSVgT+Xe1
	E4zST+LNWk+oaz8MD1sg8YquD2RUGRjSX6PDE1oLBZmfRUFvbbwQas56ay5G9IWKCvE
	2hOurjKmshqLKMaRCInEG8JkyCKvmGjNb/7GKMCk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660869052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KLxSzB/awXQTOjPhez2T3NezE+5XDdozxL0nFFRjPO8=;
	b=UDbByhXOY5KenNVd1oOTQGOISLrMfx/Z8p03d9cs3J8E/m2hkbIuGNJcUvYR7jsG
	mBVCHzFQEedsXvD6Mtc0gYZlgAm1IJ3Kj9X09FGvHmcIpq9Tp3YavsGaQQiYp00N8CX
	JdeWCd9wDNLBoRo2VXo2FK52qXJs7E/ndWLEtRpM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b382889b-b78dd8b9-1ba7-4cad-b774-e1368bdd5ab0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 961279c7a76cb9b4895c46bbacda24b6bae1693f932b4ade4131589b2224286d
Date: Fri, 19 Aug 2022 00:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660869052
