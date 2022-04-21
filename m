Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A73B02F24
	for <ddprobe@lists.linux.dev>; Thu, 21 Apr 2022 21:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650578279;
	h=To:Subject:From:Message-Id:Date;
	bh=RpEiVXckFwgFTceDzp52hRtOhqtAYCGJA+rxsE9p39U=;
	b=cpcF7qZPppttguSsiY01vvkiuBv1pITvUY0s1dP/OWNvOXGvJg2jDbgGJJDLXUV1
	955W2J8synRIiEEXyHTN6Gz2N77frUbK+gumt+pt2lCxqOLS8W4niTPq49pyh28Klsq
	jVVWbWP9Hw4J1foKzHn+T/vcV0iX1jGBwdpV0ujo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650578279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RpEiVXckFwgFTceDzp52hRtOhqtAYCGJA+rxsE9p39U=;
	b=JBaXg2W9JMBLGQrdOUgclEGP8hI3CgQuuHRbByB/JrnDEPPB2fLREyMJLHT50vRg
	V2UhAhiJoGfrE9cIYuZgRBm4gIsJb8H4cFEeIp+HDEteYbLtYiTxoC9aIC4S2sudjcw
	PyoEbga+VLKduG7yZQm4u8jiK5MiYDnlQ1vTuJEo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804e21c85d-2cd8f1b4-a28a-4b25-88ef-987d00cda596-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a979be708a551ac10f10a5e777c8eee9577dcec1ac36177ff466316e1fd7ea1d
Date: Thu, 21 Apr 2022 21:57:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.21-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650578278
