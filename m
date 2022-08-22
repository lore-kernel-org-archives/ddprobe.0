Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56E164A02
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 18:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661191853;
	h=To:Subject:From:Message-Id:Date;
	bh=PhSll89eTXzyorG3qKUdIQ34s+skPKycO5KgizmgDp0=;
	b=H0xDatqGHVmcfWbjW9sSbLLP79MADdKp93VXj4tx86xhIaZoaQss1eBKV9dzbGgN
	Bbz8GaaPWhv8ko2IoA4eOHfJrhX+IOoRAbAsyswpSi9/m58vGX/JldSI6G3GtCEWEkF
	7o5qDQLs+jzojppxnaXScfuTQvuLy2CoHaUcE7PA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661191853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PhSll89eTXzyorG3qKUdIQ34s+skPKycO5KgizmgDp0=;
	b=ZygceeO8KYml+HengZKXDRky5K2nsY+nNTUVHK0EufPOW1H5iPGHPcnu8H9L7K1h
	RJQ8Jxob82YiTbp3zIEzEzkZNMKy1zncID0zXooPsiDd+r9i6BEU5IWRXt1xSoWMFst
	Vd9eiUv8Drh8Jh5gaA7KAwtUzJJymlwan/VZnVJk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c6c01211-78e86068-87d7-4a4f-bec6-274c53445eaf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fe43084695cfb3a03ffa82de0f2e166c417a80c1dae4864acdf1e17e1b8dc9c5
Date: Mon, 22 Aug 2022 18:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661191852
