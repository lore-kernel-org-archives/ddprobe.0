Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 516FB7A
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 04:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660019452;
	h=To:Subject:From:Message-Id:Date;
	bh=7begQaq29lBFNCbvPylSd1C2MLEiSZ4hgjGRZsVtiTw=;
	b=I2fTElI2DdG3ZgLodDH5zw5RNKAHk6fnhIkFp465J3eBr0N/nWD/i/GzE5i10P3k
	RRK4p9gHe2b1E6xQLx9REqjuBdt7Ft3Y6zhsAbOVVgJoyt4eJ56d0ptRrxm6SHFwGF1
	AvqLb83K52Hynjcm5k5ePvQVUe2fDYOFMEYvA5v0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660019452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7begQaq29lBFNCbvPylSd1C2MLEiSZ4hgjGRZsVtiTw=;
	b=A+b+gNWA2oEZWzxjNOmM10nhxatZpr4L5uH/e2V6Lk8FDrujFO+ZqIE3iUKNgh2/
	dJVMq/bYYYCO8ypfEJYAwDJwJEsMLvsCJLn6/1KmnyGT5Tk5QevwdUO4xLdTp7p+wF/
	0HyeTkpTK4BCtZe5rAw8eg70WhAaupqLEpJxEmVw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018280deaa93-d900e351-e327-4eff-ba2d-61881ab0f6e6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: af0caaec3025a5a76d5ef59129c6dc782fa69a3f825f283604be1880cae0327e
Date: Tue, 9 Aug 2022 04:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660019452
