Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8C3118D
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 14:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646924184;
	h=To:Subject:From:Message-Id:Date;
	bh=nDMVPj5OW8jGQtEQYD/COxe4lTBbGEkycZQyxKPFy4I=;
	b=mfazj6WLATXobEcV8akmnhXhRZ5xTBPXqwITVa5sF6doW5sJeHp28WEe2ZaW2N4D
	eZ8PnsNSa11hEiICEWfvwbvSji/6nvv4iuWFMGdLf71D+EXK1OH+02pGxudmty1eHIF
	zjiVogbzljca4JjFtydkR8XkNgB7rUwxcCXVuRVQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646924184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nDMVPj5OW8jGQtEQYD/COxe4lTBbGEkycZQyxKPFy4I=;
	b=OeTSt29w4PLCc4LWMIXCwjAcTKsl3KXo8R6BwVDIXG7b5hyX0KxpUltNksYnbCHW
	dkMkqOtbDSlhy3BpMW6d8UkyeRjOq45vc9ejbFUzJMZLRiL+jEIGFHfqKLlxGL9gKaT
	qgIEsExBr0BJz2DEbXkhGxEwZKzGRzEj7TXP73zo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7454bca5-016c480d-c34e-4192-bfa6-c1ae0dfbb5e8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6c61b550be59c888219460d82971f34b7d75fc655bbee7becc2e34a06b06a989
Date: Thu, 10 Mar 2022 14:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646924184
