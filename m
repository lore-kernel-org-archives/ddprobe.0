Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6778D7D
	for <ddprobe@lists.linux.dev>; Sat, 12 Feb 2022 11:00:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644663650;
	h=To:Subject:From:Message-Id:Date;
	bh=m6LuhVDxgoLAka2FwV7ugNyhDQcr8w25lNSDS/bp1hs=;
	b=QILCzmIrhXGWgur9acwVWzM2Tqtg3oE7ajXtFoFIxmLv2JlIG2ieTq6B9x3Y2NeO
	uu554gMwKq1GxXTYqrtyh5NZMLgNptjM/qMYKHaDInETV22T6XZW1gRoP1O1bOSlYH2
	SeTmfDAOLkLCtnVugv6svbXhs7pjGgiX5cvxn2lw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644663650;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=m6LuhVDxgoLAka2FwV7ugNyhDQcr8w25lNSDS/bp1hs=;
	b=B/pJF/9460st8ZW4bbvjXTW4XSBqO8McRMGnM3o8qf/Wl6lksCQTlorpCBNgiQxd
	J8Zq4C7lOJy/0Z5SOmZwCU7clkcu7u7G54hAx+lWnIqMXm5xctMZP5ksruZ6u0H/w1c
	2KlBAragNVQrCHhYu/kemdPy3qULf2SiRHsaGgBg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eed97b910-dc816b4b-f7cc-443a-852f-5360da2c8acd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6fefd0f24585bcdcae904d4ed25d65d01ca32736eecc4aaa4a420a4e96244094
Date: Sat, 12 Feb 2022 11:00:50 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.12-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644663650
