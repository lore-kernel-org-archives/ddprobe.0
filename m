Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C9F74C63
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 01:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646010984;
	h=To:Subject:From:Message-Id:Date;
	bh=2WTktGaiTLQQx8olFm7KNbWFmYiHvJApU1NWtyDRXHI=;
	b=LzMNM3g9LEaYcLrH4JbQ98YLyK6MAfqsw5DNh+uJO69Mhbh8hk980440w/D3jc69
	6kk2aiuwtrtzUT3Bou/eKifkZYWl8H5DWRbj491MFyWaIQ4zAKtO0+u6531ztw09XTE
	AvaFUQxlqxlGBaAbQCqYE8wUNQW1rOI+oQG1qcP0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646010984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2WTktGaiTLQQx8olFm7KNbWFmYiHvJApU1NWtyDRXHI=;
	b=JDSTIXBmmfpA0XtewRBxF8QACV42epiRm9NiBx4vTwfTOlWtzFclz37OW+ckcej8
	J/vmR2/JKiYL7UUtV7H7q3lsSHUB2JvgTlcfOkV5nnkDf/LjkKrLtJ0iet6fBFGSRq8
	mikN+hRT0O/oKM25MAZdPlob3nEH6XsjW8e7vXxA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3de66943-1c51fd07-0d03-4867-ad9e-40b040a2a346-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6445959008a9795189492727e777e3ea17c163964db6be0ef0d51beaecdb5998
Date: Mon, 28 Feb 2022 01:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646010984
