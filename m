Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E711710EC
	for <ddprobe@lists.linux.dev>; Mon, 11 Apr 2022 07:16:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649661418;
	h=To:Subject:From:Message-Id:Date;
	bh=Q/f6dAEN3FHlR17JnqZmUOnhXypVcSTcdMdxZSZ+Vx0=;
	b=fUZpJRiAV1jWCxP+YXMfoWO2zjce3ceGvIKBl8F90qKFdYduEiSXExdMc3p4bN3y
	Py/47BAwb7uAnXb7yTMZmPIU+kihfQAiiimhgeIyJM9xPVoFPNdUqQ1cb+EUBkYuGDT
	o+x9SJDWfydPFHvNanTRtCdxzubJ8wbYiqIdqvBQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649661418;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Q/f6dAEN3FHlR17JnqZmUOnhXypVcSTcdMdxZSZ+Vx0=;
	b=SWktvQowfmJHUdA4NTf8ibPbSv1MtTuhV6SXPPDg91Fgm7FJp8220zEez2UBdISK
	l8cIN4NPdhcp9n+CkVI4Jz/Tse4T4pib0OR19Ya70whBnhUYvTkldIYgm5J8/UYTrSn
	tfEsYR8mZG7zh99fJLN+c6FWnZKWmutHkRnsN9ac=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180177b9aff-7d8da724-9cd9-4a74-8cf5-c97b77835d0f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1c5df8099b2a3b28d9d7e137e25d5d6279d070aea9b3415347a3703d28941fdf
Date: Mon, 11 Apr 2022 07:16:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.11-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649661418
