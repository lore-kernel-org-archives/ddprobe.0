Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B0737C
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 04:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656997013;
	h=To:Subject:From:Message-Id:Date;
	bh=r0Xz8w21Pl8ncA8wh8BcCjyCPMEo+wDyRSkC7hVWEQ4=;
	b=NWQJXZ0FWGkA4UZ3xsZ7Z4zpEvQagOHoxR/5gMBS13MwfZLkLC2RjuZeOgnQOSI8
	204aq68d6zfsdBCfbqaRFwXGjQi5E6WNuC1LkUpAXRfubJsPmSBg8/3vwdI4SU9kqCf
	PFUjEsVAdK1raE2uujyavjCiYJ7ccE5kfMDcjd2M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656997013;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=r0Xz8w21Pl8ncA8wh8BcCjyCPMEo+wDyRSkC7hVWEQ4=;
	b=j+oTzwi1tZEzV2LWamtvqCxoGvNV+ZEunvNA1Agdk4eXt/wLc0X1BkOyG+UTpz2z
	rSc7KGh/Ku47kEDvG1FjMVTQWCwyFwUawXx/u3nqf8VyDCcnYNV77XI6dMH8vw8ea1n
	Z/Yv5FCr7qWNgVmf4L6FnvSd7NSfuvzCck7rfcIY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ccb7e35c-cd70b35d-f809-4f81-8fe2-ef0c014a29ac-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4ae1ccc68a16daf5a23398498ca7d24348862e879bd8dd1f5f5f92ee5825d5de
Date: Tue, 5 Jul 2022 04:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656997012
