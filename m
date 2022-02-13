Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 568917D
	for <ddprobe@lists.linux.dev>; Sun, 13 Feb 2022 12:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644754851;
	h=To:Subject:From:Message-Id:Date;
	bh=nymfXLS3Uf3kMCoMSY7x/T+K27X/73b8/a6ENkNvmDU=;
	b=kEiZqtrxsYKPdBb2ABL/k+64Sk8OY9cGBdfTzBwKDfVA/ms9v/LYmyld+JA91VXe
	/5PnONDuJtU1oHi8ua2aQSFTxdRmz+K9URyab+/X4480BaRAHvbwQsYvFW9xTWqH2hy
	JhdrZrKxVM85s+zcCDy8sz2eL302Od/aeSxssTEk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644754851;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nymfXLS3Uf3kMCoMSY7x/T+K27X/73b8/a6ENkNvmDU=;
	b=M6hIIE5bpyUnMFroq7AjwdiFEen5SwWr1ZhN2nImUqseU78UeXvWYWHKNgmvVMRV
	M1wh6mGPPBwC5rRaH88sF6/9JYrCmLgjq46S5iFJZ9vUe+GQx8cOjB3d2y2qrux7Y4U
	Xq8+mrwtZ/vr/CiBHLgL8lSLwYKjY+DkbVHd3NqE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef307568d-b78fe7e1-da8b-4ef5-9c3d-7846a4537ad4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 815357dec4f04faed67250f133fe5775a810a15c9d1ba2ed78bc8ba58bc91ad7
Date: Sun, 13 Feb 2022 12:20:51 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.13-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644754851
