Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C7071FA6
	for <ddprobe@lists.linux.dev>; Tue, 12 Apr 2022 12:14:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649765698;
	h=To:Subject:From:Message-Id:Date;
	bh=7o0fgbDZJ32ag6PuB42mojVqphgQY0fl0fVph5hvJe4=;
	b=Jn89tbQhkxuvUPVkKvRRV/K/OScoxdOuzDT4YZZlHBARtP26sdUFih+EOvhS2PoZ
	69qgvK14CKvyZRBdyq6vtsup/hYkCy5eqkSm/ka9u8dq73L+GUaLq2IzBwbPaaetLeH
	kZdhjBtZHE3/ZJxl9b7Vfnf+eAm3JdBXA5eWeTIg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649765698;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7o0fgbDZJ32ag6PuB42mojVqphgQY0fl0fVph5hvJe4=;
	b=hdAaGynSFUFc12hXHQrm9WC1Td+Gy9KcWc+Lpt990/pa6ZzTp3Y0XpVoryYTmfMt
	H17oY+KiWchWaDCV88shtofAdNzeqwCHSNORkmYsUChFhf30IATQY8LsooSQWZKWWKx
	8k/ZWKPm/bpVPK0wNwnJtTs4OdNh5LvYs9XXsbJ4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101801db2caf8-7cd7b5a7-a9ea-4fe9-b9fd-f970f4de2425-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b526c4785d57faef68486adc5498079a0bc0e6470da80fe5b1f4823984d8f7ab
Date: Tue, 12 Apr 2022 12:14:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649765698
