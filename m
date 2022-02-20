Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FEE8161
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 11:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645355484;
	h=To:Subject:From:Message-Id:Date;
	bh=sFesHejrRtyDaS3COAF3PKloYoK1PrBGRxAuMR0Hka0=;
	b=IY32ISXwp/fJ/ZiSOiyqK9Znxodtocx3MNQgWIc1vMIqIkAKjb3BO+S/t89k0B83
	osGqXFNHaQ8Qjazp7p3CnVY0lQ5TQ985BhefCgO2Ro4V8YCzr3qoIfBlfoZqjXWcKoj
	bJjiUM3rFgNvYJ2kJkRpmX2lEV5s9cH7Xhzwvtz0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645355484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sFesHejrRtyDaS3COAF3PKloYoK1PrBGRxAuMR0Hka0=;
	b=fca2HgVX0MvTiTwPQVZHYsKhRybt1HwO9l4aqhw/c5GydecUaWaF1d7YVi5UdOZc
	oueNHik492hb2BFO3QWO0MQr7G7PJdf0kHsO2t6+KiuDwvBVDBlUdjooD/DNBMfTIfU
	uotEK+86IP9B26D3ZSZAHYrrNkq1w6lP417H2OM4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f16d4466d-ce287bf5-90ed-4192-afcd-7f21e4a4b9fc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8e80ad60f24432ff04de2f9b2ec0af688deb13b0a3e8b735fb5fbe46b7a6b56a
Date: Sun, 20 Feb 2022 11:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645355484
