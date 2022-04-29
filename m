Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 979551851
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 17:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651253638;
	h=To:Subject:From:Message-Id:Date;
	bh=GJzdMaXhSo/Tl8vwTC1wvqOfUXMVmrqZuzOp5xDaxVk=;
	b=RI2JgJMZmGg04QZaSxGbWlSXf8Thkr+d5287o8U7weCFytzIDGlA8NNJFsy7gkKc
	LsshH1917p/9MDNeWXXzElpue7GY2SWvKDHQ4WWSC5Jjv7MbYK9+jYxywwJHo2iGypj
	g3MDxGtdFQ4U4rln+I0LpfStbnJettu48Ui1+0Ug=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651253638;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GJzdMaXhSo/Tl8vwTC1wvqOfUXMVmrqZuzOp5xDaxVk=;
	b=TiFdCIMs+g0AMzsK3m8aCWUXDteAdsylwjJVoG30rnVDuI/UCHOAgu76yLHsq/TI
	2jjW7VZ0Hq9tyvySQWZ5VR6n+RGSV1WFP+4uqOXBxxHRInn3MX7VSjfFl06VGHJL1Gz
	iI9sYQXFJmf5ND0rO4416CDyPmuhUXL1rx2OuoRc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101807662f4a9-16bbb930-84d9-4633-b947-2c2d9b266fbf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c40bc1e64c6ec143eb927cea8ce4f475f83965e406ae19c15fd824f5eb5575b2
Date: Fri, 29 Apr 2022 17:33:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651253638
