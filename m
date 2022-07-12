Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34E4B1FD5
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 00:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657586812;
	h=To:Subject:From:Message-Id:Date;
	bh=oa8Z+SBWlNvOYt4OxTOz+dAJDOgH8FC/QlG7t7fur3Q=;
	b=bKqgUfoPDy/SanQHhNWA8z2AoOv3ymf1ywMB10lCl6WRBSLHmGPaXG4qhxD/ZZi+
	GyJ5AebVj18h0EdID85d3e2oVwoi8zOzXJcgG8GT/r6JLFMgq07aohjz6m3ITxj7Ssp
	62MYwsM18Ac9CHQ9XmhMal+rjwtH0iJM8afnywdg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657586812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oa8Z+SBWlNvOYt4OxTOz+dAJDOgH8FC/QlG7t7fur3Q=;
	b=CqlDpsXoiH7AJ86xGcROUtyTNvqhDfgclZQ9NcPvIkCuK2v2kLJ5k7Q2OD0c4TVX
	ozoQ6Y9Hhic23Io0pc9BOZiuDGZseEQ+fAGnYJcUZaGPzQNDBA+e9GBw6005SlT7fcn
	yu2un8E4WWQkfWDkWBRGCY8/7Wi0/FN4ew/Y0i9U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181efdf85d9-2a34199f-58be-4553-bb1b-e78c13cd67ce-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 187a7143e23034f299fa9fc0c7d743d2c35c7f3544d0193c61a4a57813c043fe
Date: Tue, 12 Jul 2022 00:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657586812
