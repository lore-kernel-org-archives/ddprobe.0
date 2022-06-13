Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFEDF1364
	for <ddprobe@lists.linux.dev>; Mon, 13 Jun 2022 12:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655123039;
	h=To:Subject:From:Message-Id:Date;
	bh=NgL5yKWZPHbRc6FOLkOOrMglvJcR2g3VaiL0PQ2zxM8=;
	b=ZQf6/YYNMxnbMv8u3LJyeyPvELG+E8dv5GsnFz27nkjFyiK7g/LyLL0qsP0KXLuS
	lju2ZUxH56cx4tJ7qCz/DDJm7991c2ISI2BVEAk/GPP5FwOCfWVQJ8hs3FTm6aVqymZ
	5tlW684BHAtJhdQX5SJnyq8dCMSQ2IL5K5wAa6Rw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655123039;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NgL5yKWZPHbRc6FOLkOOrMglvJcR2g3VaiL0PQ2zxM8=;
	b=L9gggK/e+6UO/HI98VkwMGA0+zp0gANxFEdP4AIQ3ecmaNuDMZ4+2tyR1F9ECERq
	LSAfjWF8k/PUi8chdLQaPfIG6uWiU3Rsp5/Y8RI5y3Z3voIhVF9UPE3kej5VTbuFbRd
	zIwEM5O3OiTXbX49FZ6z7bR2/KM7I+0YBpUyvmxk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815d055410-0dbb5a53-dbaa-4d04-8057-f54be50e67c7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c92d039cccd2ffbe4bebaced8dd40e3b3f2a4406d6610185b7172285b9eb539c
Date: Mon, 13 Jun 2022 12:23:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.13-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655123039
