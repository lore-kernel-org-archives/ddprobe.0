Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEC957A
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 18:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647280885;
	h=To:Subject:From:Message-Id:Date;
	bh=ZdXdhUggQUV18NlSQkmqILGho0htIEpBvbl1Zx/i65o=;
	b=dhWDV0LctPoAdWKeKnx7SC34QN+7EtcDAOIGhJX8O8j5+4hbgmMxBg9aeTCkKMJA
	gRLI1UP4lOyCiBEyB/1lzMKmZ8ZpQ7nGPp2wD1d9Pcr/LlYejdDncdyQysRrXyQZCUA
	fTNUJfmOVbnR/Il6qebO5gYRN4Zh0C0EB2u77fJs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647280885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZdXdhUggQUV18NlSQkmqILGho0htIEpBvbl1Zx/i65o=;
	b=OcreDU2oe+PLffv381CMaRJxERSaRLwuHqAXaDBPrGFdFJLXgdBYnpq7v2+/r6vO
	ep217l9erItLmc5BPkhHRpl1R6xTXIGKbcnuQ89JH2OS8N3YiT42XVGS7hwkUng6LSb
	pVl9CICG9rDz5qT3WsrU8gtnMfRqG+hRgKiLB6ZA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f89978caf-973fbf0d-deb9-40bc-a4b8-220926309c14-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a9ac9b2fb6943227cdb800adc2550a4ca46eb2d432900b0ff545703cdd4226c8
Date: Mon, 14 Mar 2022 18:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647280884
