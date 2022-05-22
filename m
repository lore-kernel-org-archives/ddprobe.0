Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 194AC2579
	for <ddprobe@lists.linux.dev>; Sun, 22 May 2022 11:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653220259;
	h=To:Subject:From:Message-Id:Date;
	bh=I90xL4X8pMYOLUUrUDFwhIgsF17G+6gM9eGIN0SxAn8=;
	b=KB2nxKG8xfuxiyDxa2V8OVejKFpIQOBkALJL2eU1cDYovKSZGvPV6//43EtTdUUS
	zNu5pBO9NUMetoZ2szUT1v4nk4QI1L/fI2znxkAhgR7WSmFfxO1Ro3nvE6vYkGEhBpd
	AytCAHVZOMddy73X3RfdE6Yt0guuVyfsZG0TQrYM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653220259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=I90xL4X8pMYOLUUrUDFwhIgsF17G+6gM9eGIN0SxAn8=;
	b=b7nEsffgRc6DFU7RO0JLD1h4/GWVbiLUoQSb46kce7UFtgcO2f5ous6420KtLSFl
	PcYb4WBqxcJ2uHYzalxOMo8HmYhPUfpEthYGEh2KKb/SN5+Ji1mxCq9hBJfSVCiDLva
	P30fde7Fwp64BthR+s3Z7kmP8174KSfqz//3huuk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180eb9b35aa-8d3972be-9132-4f8a-b4c2-9017ee8cf863-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8590d7ad2be3708699d37b5d50389f4c07a84b78bcb2a7ded1e0ff53d66395a7
Date: Sun, 22 May 2022 11:50:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.22-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653220259
