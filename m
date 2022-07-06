Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1E126023
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 06:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657090012;
	h=To:Subject:From:Message-Id:Date;
	bh=viSenb6suz6sHSVvARTWUIRTD2oKhFBKT7OmbP9Be+Y=;
	b=IVxczmD3k+NhYfu79dqNropLNgreeL3IbDiC6ig+PbPfj8/WwlMewWBgx0FAHdi5
	XCy3qpswOqhNA0wgW1jvQy6f7zZ3+srhx/sUinlBdXbbGxV614kNSPeW8mmPjGRXe72
	fOzc7dZMp0T6bqfiEFzwiTzsq9Vrns6i3p0M7DjQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657090012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=viSenb6suz6sHSVvARTWUIRTD2oKhFBKT7OmbP9Be+Y=;
	b=TVsUocWC0JuVw6hkRvO19/xbG+jtHdXw5I/zzz9T7l3ZfaSCdfGBojxgz5BlMpDO
	oJUNLfLzs6DqdRPtxdu6Sha/aC/D8nEEgUxZ9QFR+mQL8F+CqxQEApHoYiDv5P9BJte
	tZ3ePVgqv5Gtsg5/B7/ushh89U7dUFSlDbcXFZoo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d242f47b-83225962-5703-45a0-86aa-e6acc7fabb26-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 39f6abb33796e56615a47f7584876fd44af34f5646ac4d912294a5ee84a1f0f8
Date: Wed, 6 Jul 2022 06:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657090012
