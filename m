Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 130AC7F
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 01:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652838539;
	h=To:Subject:From:Message-Id:Date;
	bh=yF681qeJxIUIcHkwF76hAZOylEXQIGRs//osdW+RP8Y=;
	b=C8+Bn5n/tQQlHS8dtKliBvinQbYFYUzXRBMvjMYMhaNLQsfzkBENRvmAbRjF0fTC
	x+dN41yFKD//6HFC63A8oEspt5ZUufgBiHpnH5D0iCs/DHffHZSIg9TKLGqhc4Vni+a
	Yr2AIxmwNRs+Md7GR34IWE7KjMxcH0NX66rPUm/A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652838539;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yF681qeJxIUIcHkwF76hAZOylEXQIGRs//osdW+RP8Y=;
	b=BE6tOyqjKmVWiCC/rVWh8En27TfuqoRUcJLjb3oq/j3KQC4ksJE7NZKEAflYBHPt
	HF2n3t/u3k5cNf8pFFIlxaEcIEuUFR8cs7i4LsuMqre8my/QL87ILaqcSouDHgcNZ8R
	12+DQwGuii8h6CkS2PYUHMAJwtYJ9bbe4N7ch+UU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d4daa008-3d61e512-466a-43f8-9607-be352cab1e68-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3b3af9578342adeaa8234be22856d5ed43cbb4fd11f080c1bf6512211db25ad9
Date: Wed, 18 May 2022 01:48:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652838539
