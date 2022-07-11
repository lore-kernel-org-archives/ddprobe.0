Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC3E67A
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 13:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657547812;
	h=To:Subject:From:Message-Id:Date;
	bh=sMQc+kyuvZQ8zh5WPpOxH8PzUihOGtpWiuext7iUoa4=;
	b=jM8OdWE+72sFLmQMxO+yeRK97W6wgK7o1iM9WDbtQyX7hX9Hb1UPHGzI+ap2BHlJ
	G4JvTItrQf6rHumAtiGXg/VYfZDcrg/dpzzRy8ehuszJhDxVLhlGVfa53MurXa6Z1I/
	qkM7PCQ91+RtW5liyALf7djiKmOONPRVCIOsCEDo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657547812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sMQc+kyuvZQ8zh5WPpOxH8PzUihOGtpWiuext7iUoa4=;
	b=QoEy9qZTRMD/4UBbctiX1s1MJlMQTbiNcUf880WylzzS3eU0nU6iRCWBWXXrRdtP
	Mg3+fua4dB1lZ9UUJV8MNSmfBPQn71SHsO4J4Ny6rL8dxjkc9TzgG8NnRo5jpR7PyNY
	U6Stgoo99+IE8Li4QFak0DzzD6fTZMWjrhSz3vcY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ed8c6dc1-9614ea65-00d5-4a6c-9cb0-a514ed13b44f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2987ae581f424b59bb8e9cf369f6161a23b6154db5d65537073db5b0f4a67226
Date: Mon, 11 Jul 2022 13:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657547812
