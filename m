Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57B637E3
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 04:11:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647144685;
	h=To:Subject:From:Message-Id:Date;
	bh=dnpvmcov7svi2IKd7kWMOWMWxjEyYbbqsI63w0HJA2s=;
	b=g2dpNz3LHebDRxMt7fU86nqo+i9T1kwcSgNaGsXmwz7H6ReSPsvj20fHJVez7P5j
	ABENXKY+rh/tSMYKtwhdzvdzAmxOhH1tpRV5E4p/MUvAaCN8XvLAwOZjqZBQlMWTEh7
	E1wexzP7QLaX8+O3Qy3LXkiZMUeay0FGZFs2NYfo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647144685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dnpvmcov7svi2IKd7kWMOWMWxjEyYbbqsI63w0HJA2s=;
	b=FINlaeMb3K+EjapFsQivaFnNLgxv6jCmR0Sdbf+oiJCBr8K1/+GrXH/cmaeDfhz8
	MFINeNblgv/PY16RU7EQda88AFt2qgbB9b4ULwv5qR83pIIzCYHYiUtTcxFLYr2j30K
	WlpHrwHQsQInx5GnFTcrn4CLYOn0uVfPeWSOaQ0w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f81794d16-a1d75f70-6665-4dc3-8b86-4dff5afda32d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: acbe4aa5660469431d5f80614cbd490e4459da766807ca8c1e0887b75cef727d
Date: Sun, 13 Mar 2022 04:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647144684
