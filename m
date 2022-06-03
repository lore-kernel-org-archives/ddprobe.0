Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E884ED2
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 14:04:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654265039;
	h=To:Subject:From:Message-Id:Date;
	bh=EytUmu5cWXwEDnC+WMhVSjirij75W9E4C7m+77MKM5U=;
	b=FN7rtj707MyRs+uquKE1fAOxkkqILxO8ApLUDjlu+yIGazg1Ft7FeUgJqaRXY8hE
	SXOW+1EJmQrbh+/P7hs6zSvgzvI2XwcKT47eNtz8i+cyvwaekOK98AQ2CQjMQqbV/hI
	1YZ6I4hOReCM9TxDhgOinHFh6jzYbicYUBspPmDw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654265039;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EytUmu5cWXwEDnC+WMhVSjirij75W9E4C7m+77MKM5U=;
	b=de5yUST31N56NjI9qTwKorEosJyVNbghCK+fQfSEukBvF5VC5TtKHHWCTIPztgJq
	4SJOYv3JQ+oqalZ5eVcDZLGAHY6cqQ3FADyb93lcS5gk70Z9/OApqi9rZZtySiil381
	evgY6h3IgoOapSGX0E5IXfyVCOPZzusPswaQkK4E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018129e149c3-f358bf4e-4e99-400a-b6f6-df84cfc3b76b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 802a2304288308087bf8b7f0b7d44b185248a58b582e61ff40d2bbfe94e0cf3c
Date: Fri, 3 Jun 2022 14:03:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654265039
