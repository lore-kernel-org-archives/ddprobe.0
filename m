Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BAB91365
	for <ddprobe@lists.linux.dev>; Wed, 20 Apr 2022 09:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650447238;
	h=To:Subject:From:Message-Id:Date;
	bh=9Qz/PQYPTarBFgEhn/2NyXUj1WWQm5QebL25bIzy1II=;
	b=cb2u2cEpbtB2rxy0e0P0ZAfNsz6KSEdfmw5WMi6/lhIeHt0fSJwKy2LJ1Ztm0ITy
	S3N+5xZYt6HtKK3Ru1K+zHZi8EOSnmjVWg0tkdqxCqPxzhGuRxPjFi0IZcSCqwVcbF8
	/aheqTFAAfwdxhFojC/m/KBJnar+IvKdSvLtWBYk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650447238;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9Qz/PQYPTarBFgEhn/2NyXUj1WWQm5QebL25bIzy1II=;
	b=DPwbOiyMFKbRtNxYb1syiEH7wagABaSzo6z8ZEDDLOzxqlf/fXBBNMhEhGLdYu5U
	4ooqYqNijPvp2nAenlnIN/oVRc5slYwOF7v2aPwK3XzBTmaFY7JyJAZbyTaLLKbKfTx
	MSTeYyhxrHM6MR6pknK+kyGGbRp5QtAJiPS8hVwc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018046524482-6b43ef0d-3c52-4a43-9066-3444d999a655-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ad138ec0ba8eecaa7a65bc93b0afbeceb8e3d81a6f82e03e2e5e2c664c1026e5
Date: Wed, 20 Apr 2022 09:33:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650447238
