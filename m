Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67BFE7A
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 04:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660020653;
	h=To:Subject:From:Message-Id:Date;
	bh=1FLZM6M+C0qmNG6wIZH3pQdAkqMVmQpCKwRj1gv2hl8=;
	b=kjw0vz7kCeiUScHw2cTrcxCgFQ0+L80gz56tZIw2zmibmBdGEdMnXDnc6vZ3eZ+5
	0KnSUS4y+1hNL9tJyQ7pUMpb6Kc5bVtjD7DBl7/bvY67IS/1W7MhZIqdi987fLGvE6K
	j2F8ljPrVlSMAmXYFQz3U/aSfshfqwQZCb6DqsYg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660020653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1FLZM6M+C0qmNG6wIZH3pQdAkqMVmQpCKwRj1gv2hl8=;
	b=fmx/2fWcRpYIGv8MTEcpZWe6BLXiPDXP0QN0wCrZ7uDppShwPrgFFwYNO/ML7mFv
	YQC1rt1CwLi4vBsJKegai4CWQ0HN9CxIAvkzez4vASxiXqFoqrkrrXbnTthmd/3sBzV
	RGbSi13ApVDya21SeTvHGzeedQiTYFb7z6gAjnPY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018280f0fa18-a70714d8-b6df-42d3-8736-e5b2dbceaff2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fb975bcd7125e93d02233a29925fdf5a2be91943fc7a75479cc15bb236677b18
Date: Tue, 9 Aug 2022 04:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660020652
