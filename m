Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26DFF7B
	for <ddprobe@lists.linux.dev>; Mon,  9 May 2022 08:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652086198;
	h=To:Subject:From:Message-Id:Date;
	bh=uygdnRPSPMuT/7J52jUBwsMAiZIaB4/pEVR27UskTqU=;
	b=k+YTpFz8EbB7bos79DzocaV7YmBxQ/R63o/0UlbZ9rgFGbPKU0ZqRjCQWkCPvcsa
	KZH6OnvUfBTc3WaM5xX03DU9gCl6J3xOJOfHQYKL6gFHZ+44qcMtDezWryOV/ii50ih
	wqYoQR2KIYR3676UzY+qQwptYCl5wCznvfwXkwYk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652086198;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uygdnRPSPMuT/7J52jUBwsMAiZIaB4/pEVR27UskTqU=;
	b=bEMlN8RBAywsZBVptr6V/Ja4oOZIdT8rg8VfU7PJwwbbOe0yb80E7e0kJQa+50Lp
	hb08i45t/bKHuFUvEcxRfBEi+QlvWcxWuWSQ2SO3dcKZfjOvDdVDlsIkePbUSBXvJTy
	rTmlokF0DyUhzFIkrlrX9liJ+NVr6JTHSmBZ3TF0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a802d05b-c24b6e0a-0366-4f8c-80eb-66d8d704a489-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ffcd6ee89f30ccb506c5bb5b56d0651bc66fc50bcd584b6cb29e795cf6c9d8d4
Date: Mon, 9 May 2022 08:49:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.09-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652086198
