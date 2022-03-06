Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92A5210EE
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 16:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646585184;
	h=To:Subject:From:Message-Id:Date;
	bh=kIR6xv3rEOyjsv9kboXHhHafJnjtcrOVNBW4VH/6Dfw=;
	b=I4hxDV8ATG0UsJQS5hUljKonyidbaMiucKPsmtWDVK2IFT7YpmiiCiJe2eai4E2b
	Skz3421RhIFdKNXCYCP8IAWnMCXDC/cURhyyMO1WSVOI5JN4fpqhWo7wQR2u5ydrCiV
	YMyz4seSBAkIQ2JMSFnZqE9tS1pBZd5mAbWwkKjQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646585184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kIR6xv3rEOyjsv9kboXHhHafJnjtcrOVNBW4VH/6Dfw=;
	b=jKoU4ra1OdTFn39XJMRMgWAD5xpSnQaqLE0/eTAXFNccbEWn4DwEbr+cpZ5M9Sv3
	vDLq+DoUt7cnVFq1U86vn8LtukISRRnteZVFlWB+SRczCC1aDZuxQwJopBtJiP7/peG
	jpApcxMeAVHLKzQWc52RPx4/ggVakTyvhaCygffg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f602001f9-413138d2-5456-441a-bcce-fd64c04b1f21-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 20f27dd9ed4da5a45712295c20a41fe2df502b7d68497d2004424b0b6da683f1
Date: Sun, 6 Mar 2022 16:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646585184
