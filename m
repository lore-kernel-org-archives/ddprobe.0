Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 329AB10EA
	for <ddprobe@lists.linux.dev>; Mon, 11 Apr 2022 02:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649643358;
	h=To:Subject:From:Message-Id:Date;
	bh=53YE1iisXKWNC/z+3i+ffjyQMzFJZYvnN4iDvVxK42Y=;
	b=Rv8ykbONCLMSI0B8xNasqmKhOwVA6joeQzKoZtG74GHqz5Y7NQl1HQ9vf0i0YFCX
	fsacRN1wH1dLDzT2mXrFPxXKh3VCcGn7lFHhmW4wsc974J221TLVDiufpFIi9OavuO1
	Q/kQ/40oLO7RFm9ctWMht1DlMGPbGaX1ZPjPXn/k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649643358;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=53YE1iisXKWNC/z+3i+ffjyQMzFJZYvnN4iDvVxK42Y=;
	b=Kucw5mpsDPhvx5JqmSE6x8jCUqrNZCtjPYVGQQF3SZ86Vestlkrb4brcCSCvQV/d
	fsU5l5djWHbaGETOcxzaSUhYlLmNNM0Yb1IYqXA1C6hg/tjefFph81fS2g6L/Dz95oi
	zNz1pP/ZRP/x5USMmPKrI21UhIs4habgPRRfJH+c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101801668084d-80c644a7-bb74-4289-8e71-91a11e2e9b88-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 246328a2ecbeff29d3d7817b9e1366040a8360a97c5d613aec5e20db7c036506
Date: Mon, 11 Apr 2022 02:15:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.11-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649643358
