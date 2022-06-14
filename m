Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EB8023C7
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 21:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655243579;
	h=To:Subject:From:Message-Id:Date;
	bh=Q6vbQkTYBLbRk349oVsaN4yvhr168NqV80uI5iG5OmI=;
	b=fwVWf7u0hark55Cg5q10jkuAu2zQk+FpSjQpDCjWtarNxSOqapjc2whRIeRIv2jh
	SiUmMjm4zzaz+gmMkNu0gBPYjk0QF1SDirwBcN+I09RXvtFURl9klEUQhojpnyH0s/3
	F16Jzf/93APv4g/02LR617BhJYeQq0Pwzl2dZAG0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655243579;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Q6vbQkTYBLbRk349oVsaN4yvhr168NqV80uI5iG5OmI=;
	b=hklUId+RsWkbOcx6Ghe0ju/k/rizyp+1aCep12070HiVZ7G+9w9FmAFKuML9HAxA
	QuOmuHOypcRwpQu1qSqd78354qg1wibrzH4TZdDOEOk27rd/uSC7KHD/dQS/5ElEhn9
	/QBPzRrdkTX7BLqqd8PpRwHHLEWMATAhftJp9OaE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018164349f98-9f8eb9b3-d1b2-4eed-92f8-5b5f3ae58884-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 181648dd1d71486ee0180b0cf39b786adb5746d86d3996eea26b1dde497ef8ca
Date: Tue, 14 Jun 2022 21:52:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655243579
