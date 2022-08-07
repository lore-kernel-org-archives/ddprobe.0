Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50F5A1852
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 13:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659878452;
	h=To:Subject:From:Message-Id:Date;
	bh=irgwKd3S6CBq/WF5tMqdXL4VVe58skF+AL6QWwk28j4=;
	b=GqPrSicnxCePE1TE416ImHdj7puHN78f9NaC4fuXTptTkQyZAAEdKD7eVo/2bZ0c
	S6vKY9ALbJ0UvbW2jAVqZlzIM/fLq/R4kTB3roV8DJ8X9YekUuLGcMleRabPTuFQv95
	JUYYyj2/fyx0ROaq1GREJPt3KQp069tp41yVkezE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659878452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=irgwKd3S6CBq/WF5tMqdXL4VVe58skF+AL6QWwk28j4=;
	b=i2oI6Qys0f+aXVPsq5WRCK1Qu1jBsPtznZJkXHfgYWM2xOS+d4FMI7BRrXMEDqu0
	kSErEwFM3JwsXrrfSVqedsxfYwQJgmtpyr91G9WIhKgIBmD4eGdVMLKTvSZew5mGTjh
	M9jxIOSZVV7YWLk7YRZ5r6PT2rlrA7dLZP9Jb0sk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018278772d54-e6b56695-a333-42e1-8fdf-6712ad232719-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 66cc038e74680fc0e762dc939eea72baba2045e8db6571ae34b2f7974db81384
Date: Sun, 7 Aug 2022 13:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659878452
