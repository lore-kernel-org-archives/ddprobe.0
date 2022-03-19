Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB4CF7B
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 21:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647723685;
	h=To:Subject:From:Message-Id:Date;
	bh=Qot8UQXKhiCKCtPBpoQGb4y5jsGh2a/prbwQukrJw5o=;
	b=miNP9J8jFdRDMDO7mCDOlpaRmsmEoXKDE8+s4ZIA0dN8fZh5EGL/fiZlIDxhVVIX
	f8Gl3VfHoZfT3DK0rkMXkVGbCt1LxlEsJsKpte0gmNDqGD+ctVHF9H5YtbMj3ZdrAnb
	i2TTFs4BTb6MmcwuGDAd1VpTxi0281KHmywkS/Ok=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647723685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Qot8UQXKhiCKCtPBpoQGb4y5jsGh2a/prbwQukrJw5o=;
	b=LuaVlcz+Ott5xgGrrKVdHeCBFOP2LzfWgJ98vcq5Rwu/CSxmtHwd5OE/1DxjJMvZ
	2yejTxmx3fSUoJTSQEC+NufX6DpjRIz5mGQ3b4jnHNNS6I28rw8MPnkmo2CJ0/g7Cjv
	aDKB23u+9cAlZ5rnE7cTtMg5Sa5zbl2b6tMG9foE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa3fc23ce-321fe1d1-75cc-4ff7-b0f5-11d53dc0b37d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e3b6ce4a1b9e3928feff0bc6730b354889271c7e3c5429e6420f8a9a07ef9ba6
Date: Sat, 19 Mar 2022 21:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647723684
