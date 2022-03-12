Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F80D620
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 06:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647065484;
	h=To:Subject:From:Message-Id:Date;
	bh=hKFOm32e7B/WtKtDuVW2L6iGsmF9W/u8KleRWghWzZU=;
	b=jORkeHVJzdOGlwGyoM6lLOBacuytWojBZjgbpjNBK73EldHRamcA/BveifstTG9R
	xzM3AOJ07PfycSJN/hkDTZwrs0h8kjOjXJTcNdAdv/GCF+hxfDSDk11mQ3eqPr5/c4p
	Zi3yWl7uLnmXAXMH3CCXdIHOTiPG4QrHnNBjRIgw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647065484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hKFOm32e7B/WtKtDuVW2L6iGsmF9W/u8KleRWghWzZU=;
	b=X/9Dae86nLW9poXbaHG+JYygR1pPPGcooVXzdEc7F+E8DjM1VQqwJyXhDgVZJToo
	S7lE9AAaaaWjx6OpLF7MbDT2nPdCiy4fd4Q3jvfCjyctnBSk4MqWDgH5lkM7jvVV11m
	vimfqNRSIQYgIRaXcWPct/qAMyNPEKcFcZH7H0cA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7cc0cdc4-389061c7-65a7-4d7b-b2fc-de7d8c187bc0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3cfbff0da78530160f331201ba64690962f760a6480424baff83e5f05873d180
Date: Sat, 12 Mar 2022 06:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647065484
