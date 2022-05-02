Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA34015A7
	for <ddprobe@lists.linux.dev>; Mon,  2 May 2022 05:48:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651470538;
	h=To:Subject:From:Message-Id:Date;
	bh=pk1UdcFn7RPeoZnurkPsiMXb/TtiYc3lTZW8TNU+KxU=;
	b=SArs9SPZexylnVCg8Yf7Z4TZfrUR/N7vDZlkxdVVGJt8Vyu4bsaXtfsiny/Lfv8Y
	XVGzEq41opR87QWVmoXJj7dZztCHXdy3Evwk+KXxixj96TLVltSr/CeK1G68jPNDXOE
	sD0KXlxLDcsGRUUTlCsmhuFMEYWPmnLlrb5kbiVI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651470538;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pk1UdcFn7RPeoZnurkPsiMXb/TtiYc3lTZW8TNU+KxU=;
	b=PSQbX+XTlr5t/TnnGbcXfAMLephXU3VVMUCDTdO7i3yg9JNsLVOvL4wuuNNol9hF
	qJNVI5pZZE5FHN/vpFeFMDIc4tZWtBu8tBrYktgvo5Ify8kztUGjlcP9kSsQ7HAg6sC
	LomXv99IRJSZC59IXHiRieXlABSsl4zPlQCkatKM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018083509616-a1ec6192-968c-4abc-9e9d-757545bbeb8d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 82af46ccffd13065bdf8ae59a73efea07775743f3bf92a52b0da3425f2aebc29
Date: Mon, 2 May 2022 05:48:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.02-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651470538
