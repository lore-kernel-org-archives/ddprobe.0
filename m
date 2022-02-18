Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE71F1FD3
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 07:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645169785;
	h=To:Subject:From:Message-Id:Date;
	bh=5fync64sqQIWksiw14qBkP+p3EgdEfOS/J37tYnGCrk=;
	b=fuDofm/wU7+/pSPJpTZJuzBXF1ODyMq5Ns1r65pKL2WVPQL4QFmGCPwhWo7Vqnav
	9GMhizZBxHmzZkN3mZ7btQDlDDosYzuiYfQZ4g1FWLuY/DieW21d3Nqlt8eIDJaoFRE
	tKiUwC3IbzqGUDpdYW/vAzTtpLVytL43L0b621Vw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645169785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5fync64sqQIWksiw14qBkP+p3EgdEfOS/J37tYnGCrk=;
	b=WXofpwU7KIrTgM72HKtxS0WcPfDFI+NfRw1HYy90fQXFHOZPywffraj8JIkwsyMf
	0E6B9J+uPTSAsxs0f9p3Q/Au941TH4Lp1hMCnubasrAj0OqSNN7cn7uW3spp+FVf89W
	CDCu6OOsnKPT5EC9eAkvplctz7pALcnP2SuVD8+Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0bc2b808-e3d8c48a-c4ae-4154-9e17-a84530b8c04a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bfe78fe2d631c37ac2bb10fd6052e05b310c24d2caff9200ed8bd14f488fe0bb
Date: Fri, 18 Feb 2022 07:36:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645169784
