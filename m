Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F87D7F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 12:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659442852;
	h=To:Subject:From:Message-Id:Date;
	bh=L9IT+tVOlHT+z+gREfJm2HMl5ARSpHwfComw+jWg994=;
	b=K0em38wMbZ+EE3SRxfFyAgnjbuBgFt6XNdNkb8F9RNuxQ5FedmhpsgttJFllEsC0
	Wb7LZSaeTiv1e0EfiWy3Fsy491moHDx71EMx2rKOqUboDyRqL1RyzOvfzaf/61vXaNL
	GjV7v0XIggN664l6MXOf1Ma0Lip09FPhFyfi1ioc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659442852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=L9IT+tVOlHT+z+gREfJm2HMl5ARSpHwfComw+jWg994=;
	b=f+FuNsKSgwAbThi7d+yrRGjcgRfUjQFHPPjo7v9KrYBSoPOqfljR1JsdUPWAkJLp
	pOwqTyDSR27qUK65W9ZRrfvXsax3RKMyRiR+XlPpwokJHro1lSE7ONYKqhMPFoPfKEE
	WSo5Ag8Dr5vw7T/btMHEPLRxTXEn6kZFbibd2AGw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825e8072e7-bed46d2e-f8ee-4224-a19e-0473e210a24c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b1e0c51f5022e4fd9fcbbcc4b9432cfb720893453e1bb3148480cb7d1758fce0
Date: Tue, 2 Aug 2022 12:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659442852
