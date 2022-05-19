Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFC777A
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 06:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652942039;
	h=To:Subject:From:Message-Id:Date;
	bh=yPLcdBCJt/Wpp95DKQ7H+MFc3xb5UuCqp37FBOHA0VE=;
	b=dquVNqfthucgVnKDUztnpSfdwVVwEjhdECb11Y3Pv5QloTTqrwt8LWB+dBw5tQRs
	T9dpN/wuShOVwjNjKvaQpvsvyk6T/ceBI0nXlbw+Bbv/Et3qGRSCnZAv8T3WnWgPZJR
	KycjTkH8I1uJ6yK4B4Gk+s1igMP1fnABl51Yq2Ks=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652942039;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yPLcdBCJt/Wpp95DKQ7H+MFc3xb5UuCqp37FBOHA0VE=;
	b=FRBSU4AJ5Xwvm0kJFtH971IBqdsxClkjWD4x5GEjEHNUOs0j2NmuTwsEyWKLHbZT
	deGWwQheYpM+U2UlVGkQmFHM74PCv2deG3dTzM6sdsyHGgW5k0pNFLAKHhSUTpboOFJ
	dNY1m0zu4e5j0aSQ1n+eyr9X/t94w5ABZX5dQ7X0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180db05e926-b7be849d-ad22-43fb-a2cd-12d11d55a300-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 57b9ec57b363f72c02559909cb4c74ba49492b30c134ea938a6197f374cad32e
Date: Thu, 19 May 2022 06:33:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652942039
