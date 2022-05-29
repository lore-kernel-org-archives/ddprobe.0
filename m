Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 248887B
	for <ddprobe@lists.linux.dev>; Sun, 29 May 2022 12:31:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653827459;
	h=To:Subject:From:Message-Id:Date;
	bh=VyxI1Hjn/s4LhmNCOIoRZkswVkuY2Lh9J0qhvUkyM38=;
	b=JrHyBFQw+3ce6nir2BK7JDWWQg6APsGlYtDtuIpjMQ42+iy4bxLApCZFh3XxBBhD
	k/m7ZcyAvbvqF/e7VaZuHLLa8VFY5q/aWGjefa3tS2kt7mW9GyapbbpsB6hnoqA+WpH
	CDcBda9nV/m5lStnX+lPZVQ51wdjB1WdXumwOJpA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653827459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VyxI1Hjn/s4LhmNCOIoRZkswVkuY2Lh9J0qhvUkyM38=;
	b=Y3GInLwkA8dRGKGLHzr7wqiLKf7ZtT31n2tmYUDWIRTjoggcC25BV+hNXtVWghb2
	mOWYJQeOzzs4gMDmWshGpf4PcY/UDIBaaYJnr/dqXDfFNq+qcVGD5BJM0H8m9iB5lh5
	1gyfDgDT5cHixhvK0OppTcP/dDO740WwOSAxew44=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810fcc58e1-01a5d8fc-94f4-4a42-b95c-543ead8779d0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6060f25efa653455c781d7f293a5053408b1512b233ef12fb13672e596e0a563
Date: Sun, 29 May 2022 12:30:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.29-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653827459
