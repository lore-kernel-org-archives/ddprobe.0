Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4012D7E
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 02:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660529452;
	h=To:Subject:From:Message-Id:Date;
	bh=bv28NWdB4iIg9mcGGy7QnPrGSbA919e2K6oyx/AmNZ4=;
	b=PxPhFSoPZpzil+uV+2pG2zHfFQlvGUM5YB+tAOFIVZSyEXlnC1nEMXeqUTtiB69E
	b7BR50sFLEriSmj8lq9Pp0ok0JvL/8LapXKzsmwtpqyWf1PSIbeQBo6EdBv4LJtIXjS
	PeqCjo9tjzizayXIJwq6VSOPVcoPWQn018aHoiGg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660529452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bv28NWdB4iIg9mcGGy7QnPrGSbA919e2K6oyx/AmNZ4=;
	b=Don3KJIy2V4ELysEgNIT7OLc4vNDRULhDjtnN+YzoEnErsIEhayNJ+b9HbHDMHOo
	TTWdYKIEsTcsi6jSbEZDZtiP1eWO8/QAlr4ykTEWyQfOIqtRcekv3YrBQQNM4JUndf2
	WtYPOtUCxeco/NEb2SmAl2Nk3F4qN7Zlv1/INPOo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829f44a611-68df2844-70e5-44db-9a61-143ac3f60335-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9800a7f19987452e8e2d18b871db682058767bddc82cc159d8c20f63448edbe4
Date: Mon, 15 Aug 2022 02:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660529452
