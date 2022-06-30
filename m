Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB70E2F59
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 21:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656623212;
	h=To:Subject:From:Message-Id:Date;
	bh=dXZSvKd61/czeOQEpVsm4MF3HRDFALo5PxEGFbuEW3M=;
	b=j/Uy+yj4+mfirwcvBKJ5nof2pcKeONfRXsF1rW2hycN/rz2YXjqAVgmD5js3Eln3
	9KejoI7SXn99dzuiIUt9HhyHw1zwqRtHNioUlwhtucyf1KH/isutFqQAEjxaX7m/gnY
	/vC2TugK6TH245oJVkBX2Mo/y9Nk7yT/1fSJ3dFs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656623212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dXZSvKd61/czeOQEpVsm4MF3HRDFALo5PxEGFbuEW3M=;
	b=W8cKGVS9kENiuZ/r3sOg13hnOtWQjIcVxPYgMu25hNiRhFT9rcWjqj7pswFOUqtV
	UAsY9jtGXg+Z0+VgNtCkWAkBQ4uDQdCluvPND3e+rB4hK+cW+5dHfZohYG+2Wpa0Fqh
	clmLTtPxAkL/htEq5FvG+onCqtFWLJydLx2qvnrk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b67026e4-55bd934c-7b53-4194-b0a3-e5686daa4970-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0fa87cb15ebc1001198226ff16132fca709e403399c1968df1b8657783bbe6a9
Date: Thu, 30 Jun 2022 21:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656623212
