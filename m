Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A3247A
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 07:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654847399;
	h=To:Subject:From:Message-Id:Date;
	bh=nJ77U2JYfqN6vuHrUdPEFhr3uPBaMkcmGfUEopurkR0=;
	b=BiRAqK5ILqyY9sdF5uHoq6v249hM4bavgzHhOhw+bh97YNWkYshByR2cGC/3zc1H
	Zz1LH/D2W/65i+0oaIAq+jA+n9j6Ip907VDWVCJCC9UcBwCMFIBiWAEl/zqN09PPjD7
	en3u28O/7PdaR/tWfzhN+oTXnOvQ/xWH2AzdMTjA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654847399;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nJ77U2JYfqN6vuHrUdPEFhr3uPBaMkcmGfUEopurkR0=;
	b=Hb5y6WP4rOA0qmBvb2e0FThrb9l4+OoLy0xsaDHxU7vI9eLKtecnUtc1WS1vyuN3
	VPGiNMrR9TABmHz0TcqSa9trzdDqyFzxpbCoc5MK7jimzzYrJ/fkIe12u9UNpSJU+Ev
	ZVPVYKHeWasPJtyXCA/P+Cqto9PLOXIc04MWaxxM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814c976575-7ee41066-92c0-488b-97bc-f13a2dc39451-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c6bcbde3a8db1018822c148be674913e1b1fb6f5fff9f3a8240e54f85d262f5f
Date: Fri, 10 Jun 2022 07:49:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654847399
