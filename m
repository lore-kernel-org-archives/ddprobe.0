Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D53023A0
	for <ddprobe@lists.linux.dev>; Thu, 21 Jul 2022 02:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658372212;
	h=To:Subject:From:Message-Id:Date;
	bh=VEgAq04LmbC5AB9yhDwKVk0uSKeyfYzEEw6BBNeiaX0=;
	b=Uq/N4tRIQnm7yD/mGDFICHyek+6vzhUZgukQwRCxs2gd1xI9Lvd+BZ9RoFkETBHn
	XUi06mKukUdO36ek1KXHF7jGnHq1/LxGL9c3N4bCHtNnsWlcgLw5Y+KTyX3fqTzBaDY
	UX2iPNnh4wQE2Ld6mxyvA8Xz9vM6WSD/6eDStLDM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658372212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VEgAq04LmbC5AB9yhDwKVk0uSKeyfYzEEw6BBNeiaX0=;
	b=K+3fzz9Zqo5C5D88OT9wWQ5xTb214E9S5RSPgKRzzW01IT3CV6olu/Qe8weoTVc3
	z901stqI9t0CR1Hjd2NMwN32tyrDE5nV+//Fs6aOAB+GtPvDHyZVV0NXcy4uxv0ZDG1
	pEQ1yWEW8dtZ+uZVhoW0C0oWy1YeMKM6zYaVERiQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821eafc62c-89a37c85-b583-4a9b-9314-84e5d37cefe6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 57a86fc2bbb12272d4c6d91290dd5de28d4a74e1dd621afe80a28d9c05946272
Date: Thu, 21 Jul 2022 02:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.21-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658372212
