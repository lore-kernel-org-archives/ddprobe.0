Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 486DE5CA0
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 19:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661282452;
	h=To:Subject:From:Message-Id:Date;
	bh=1NP5BwfD14MDeQ6NyKH7x5EGYuKW3WtQJpC/T0xrNbU=;
	b=ByCw3cHBiF7AUjXYK2ufLJCIQ7v/BIVMNPwOgwzP32XXT2unOzGCqQIQgThVbX1A
	9PWh3wbsmmmo/TqJWri+yRYhl8b/mmQs5gexYLqsh/hAqt1rtdtTQUswJi7eGTKcIGv
	jwA0EZgzJ7mUxV+UDgUUTqdD9bxv3zWNw2FFDgCc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661282452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1NP5BwfD14MDeQ6NyKH7x5EGYuKW3WtQJpC/T0xrNbU=;
	b=Ph0ioY5h34wrn0z+AhITJD0YMPGtLeMxcSdrxB+JheTgu09jddcNKY/xtEE+j6es
	i7JU5oj4FfFgLMMN8wOg8cZH8heMXziuSjCpqfRAA00UTt6J0C8O2nS7sMod2KnvAMt
	34i/4nMXgB3feZo2x77f3KC7eta0GLN2ogXY1LAs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182cc26848a-9eca891f-f909-4dd3-9c07-79a4689f05a5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 16c584557f76113045e9a4b3a9d63e3d303f89eac4b6df734229cca4195d266f
Date: Tue, 23 Aug 2022 19:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661282452
