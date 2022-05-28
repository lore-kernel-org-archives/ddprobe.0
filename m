Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 366C51851
	for <ddprobe@lists.linux.dev>; Sat, 28 May 2022 05:05:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653714299;
	h=To:Subject:From:Message-Id:Date;
	bh=0Nwl8FJZpHMJ3XaHQmp+3P1dtrnvAWo/j8tn4CnUVVo=;
	b=g/RNEko61bfuPo1zfNWLQ/UoYiS1yBzs+tybBtV4EQQ5A8pRaKnezn+8WFhv/1Ci
	8JwWCr/mPEOJl2W5THpsEzY3MfwM+3ML/vvqILxc2fT5jefrYDRfp3/vEZjaKXFISGd
	pXUTtgpMbnuryzex2FFHfVd1hej+p6Kfx8A26W9o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653714299;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0Nwl8FJZpHMJ3XaHQmp+3P1dtrnvAWo/j8tn4CnUVVo=;
	b=I/sSInT+IDvIb0CfEXDusKonjAkqgFYOeTUKUYdOA0sd3ULbYbTFRlG11Tt4LHku
	W0G68RF0dafGvdDg/Wa3GTgsaEJV5IyIdRqRrzrcgSROEVtHkOgHro0dcYVT/4cpq88
	xawNLRQ6wBwewOHrQjab2mf2QwbxksMBFXdMlUIs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181090da99e-12e67c34-1c1c-487e-bb0b-4cbe49f23f57-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ea9d9dd87f123cb3edaa746c1fb38042dfd12221102546007b3c490d245fe448
Date: Sat, 28 May 2022 05:04:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.28-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653714299
