Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 818BE3D8B
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 11:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660736452;
	h=To:Subject:From:Message-Id:Date;
	bh=ifmj+OhmPN7yWG8VpE5tZNC3ndFVLg9jadZN0eQW6Mo=;
	b=kP/cy+EsBFOweYVBbWJixyWP/geiOfyFln1fYeP9cZDVLYJZ9obqXUGASkb4h0XI
	za4j1Tt6v7+87aTk9t9euvlZyK7YTO80IbFzmwXLqwS5YbK+JyaEYFqbEZE5O5Vhecm
	cO9pMl5zPPMm68U5lMPNJla8cmg5oPEwc1jHFFiE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660736452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ifmj+OhmPN7yWG8VpE5tZNC3ndFVLg9jadZN0eQW6Mo=;
	b=Ct+RrgUu/sbwtaMOuiv70H+PbgiENPZFlepDd+FSmH6adrlnHct6I3s6y3Oc3udP
	Dg2O7q8s8IZYGoJEk9LUwU9wFC3QIzcPuDoZNDkw5XFnWtcDY3YBU3GcJqRtc+SYcJ1
	GmqEB9R3qINtGnIva7M0299mYF8W9m6e7fVBiST4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ab9b3824-5d4f827b-ced1-4685-a4ab-cffb5f83e7ab-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 036763342c42a9f5e736ab80b1309972d2438b1caafef75bcf6bf32e4ce86031
Date: Wed, 17 Aug 2022 11:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660736452
