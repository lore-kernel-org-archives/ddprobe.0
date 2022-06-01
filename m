Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 201D7626
	for <ddprobe@lists.linux.dev>; Wed,  1 Jun 2022 11:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654082159;
	h=To:Subject:From:Message-Id:Date;
	bh=POuPdVVGeQdcYT4qbQyI/C0Ui/XCeTVDzyNvAOl457w=;
	b=ZLfUoKSSILVsK6WORcAqMV40aShMhTVOlEpqtYJtKwbsfq1PWBNSpccQo1GtNwfk
	xgD9bxyd1n2Yf2Zi5aSbt0BNqRPmgsOIfj416qiwWfjFWESFu9pxIsjzkpS0ziO7lV+
	V158rHeZ2xp/nb50cxHFdfIdCTnl/5AeG3MXpY1o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654082159;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=POuPdVVGeQdcYT4qbQyI/C0Ui/XCeTVDzyNvAOl457w=;
	b=Ufisz8jIxPZrsXyZUv3gXWrlwXxgMRhSAdH0dppYqF9f1oIVFYrQnGq5cE/nfAhE
	WEeeysE0A9FGaithbDUFyjZKxhUcY3yD7/57+nygc7TR3bNykWUY0fe7/7f8vh2SU/6
	rtgz0FnhQco1abXfpDUrVP8hY//QwAyqB2mA5qkg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811efac2aa-139deed0-9220-438d-8ea7-8b8d14df0c39-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 34d9ed0b45bc25516fd63adfce9660ecd035c07b0c4731b23cdfba7f165a6975
Date: Wed, 1 Jun 2022 11:15:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.01-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654082159
