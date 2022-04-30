Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C42A46A9
	for <ddprobe@lists.linux.dev>; Sat, 30 Apr 2022 07:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651302238;
	h=To:Subject:From:Message-Id:Date;
	bh=Eqp8NGjdCewBALZXqIFWr1HUAt/G9Dsp9Dsv+FtpftQ=;
	b=MQ1iXiAh6lXNXWyr7ELz6U/HwKvApkn+uxxxkyC5C+GkPaHLO7/pXh03Ow+xw7bP
	1Jrc0Smkbzwn2qNlAtXxegxbqbydtKn4RD7OxEsfNg6kv8dk2EiV351BiSx8/XK7+CD
	Lv2TCDmcz+u/CfFZovh5nsAVygCvlYcCz9SQzHbE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651302238;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Eqp8NGjdCewBALZXqIFWr1HUAt/G9Dsp9Dsv+FtpftQ=;
	b=b4wl3qOP2Y7eesh9w8OH1q8DtXmynnhm2ysvDHk0u958ukoYpHD5LA1GVjwoHq+U
	dEmvDrLJwA09p8O6GOKb7dWvttZvm0v6o9ISU2iMhcc5tOQh5ZvRZAhNQlJwL/QQBCc
	sXACqjFHJUD60k/GuJIdvY4TIZKmttinSA9nwq2U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018079488839-24a246ff-c3dd-42cb-9964-f2da3a9f2380-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1347b7205c13cf7128c4c83ec808bcfafabf76a3f430b97ed126f4e151fd0d0c
Date: Sat, 30 Apr 2022 07:03:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.30-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651302237
