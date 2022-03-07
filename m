Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B3C11FD2
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 05:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646632584;
	h=To:Subject:From:Message-Id:Date;
	bh=LXZsh5JB+mi8+LwUfNwrJ8VT8A01Efl82J/a4baJnuw=;
	b=l9P9ct0xJ1Qn40rdMLkSgne1k39XLokviR/pANnggVeJUB5svqxekMZXxay3uaZL
	2jXd3sqkUsVf7K3nwCk/2ElwJq1/gZzaLvimtSHXUDaJhrrZln2ACxnarGrRJJkqUhQ
	gwIfKWKZ2+HqPtU+HmEXDCPxmmDevcmLynA+douM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646632584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LXZsh5JB+mi8+LwUfNwrJ8VT8A01Efl82J/a4baJnuw=;
	b=funpoIoVr6TDm+LlQtqu9l464LwpOBxSGmn/+WYSN+repugpczSr2ooEAeIqQ4G3
	mPGrovrOxDAJJ5Up26SuprhZRK8Jiq0g1bXH9MZWeJpNr3kPjCTLKX2GUcC/5eHowOE
	e2xkRFGP8o90UQQBZ2G0jzlxntDC/D2Pbi50pW9g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f62f3465b-b4c5c5f3-080e-4bc0-b807-66955b62a2cd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 002de25a778f3da6fe9f6c31545d96ca60db9e73be441e8ccec1d55d8924d63b
Date: Mon, 7 Mar 2022 05:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646632584
