Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C40F33EA
	for <ddprobe@lists.linux.dev>; Thu, 21 Apr 2022 22:28:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650580138;
	h=To:Subject:From:Message-Id:Date;
	bh=OySmMva7aTYKRZhS0jxCtmtsN5XheT0rPwfQ3a+ZVio=;
	b=Pr1peSAOfk9Ni6EKNB+zZWspDb0Sf5Qg1+vet/rLwTHxtHdy0aLWqBiD3A94KfqT
	n/7bex1UFA3sAM889/VomVJGO2ro/qzv9QnzR1+hMTvmX7aB3Rdev5vDtM8JX2Y3EVR
	BLdV6n98homMc2n3FIoaHplRwdMs3q0LCgi8zjJQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650580138;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OySmMva7aTYKRZhS0jxCtmtsN5XheT0rPwfQ3a+ZVio=;
	b=AMx0UnjpewDIyRudhEPxMxDWwdcDclEOI62+t9oB1zn/kHPPiPbDhwg4RwbxSaOB
	QwL9DH7qvGsoqTqme3hrjFMbr/fgfIyzBahTxiLB75QyT90aAxL/i3bjtZfBaTQ2a2l
	wMR1ZtcbV0aceDDU9MrfeWkIaZEr7K4d1joH+vD8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804e3e2946-14a567e2-80d7-41c6-ad30-31111b1bae86-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 63dc41b40079122d34922a42417615b4578e2332082c6fa3b4cdb44de576f63e
Date: Thu, 21 Apr 2022 22:28:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.21-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650580138
