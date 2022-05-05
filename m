Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4037369
	for <ddprobe@lists.linux.dev>; Thu,  5 May 2022 01:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651713779;
	h=To:Subject:From:Message-Id:Date;
	bh=WoErAPBSKxhVfxivMl6WZMU/TJadvLH7ujlPe+T5230=;
	b=EKhaiwyjbiub4IiK8m0O0cQuef0hTbPXvAAypP6Uo/3p22SS9d54pAywQeW7gkly
	0QbQ4UIASpH9MOZaelPaIbOlURAuDUlNDx2cFNqHfiaIp37Cv8HqttGxa9GLG906EQm
	BEOo1L0JoeES3CRPkJxCqfK8KiX21cBBxUqZN6Uo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651713779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WoErAPBSKxhVfxivMl6WZMU/TJadvLH7ujlPe+T5230=;
	b=L4fmtJYlkyGr51elDt3wR7U3Dsi1+GCtcHtFDV/jEGCllPUmwA/nGp2dM/L45MnQ
	PJ6+N+1bsvmEiC4bSdfj+z4ZfQCd2P6VhXq6Ov/beH4uOlRIjzuaNqjb23CMeSFtpG1
	j/mbeHuptKrzDXMgCj4yS/vPl9sL03XuZFkEHlhM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018091d02297-e11a67ab-12f3-4027-adc9-0571b3ac1868-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8e0a00817dc5dd2eed092e737a9a74acde17ba3839d1c13a021293854fd7d8b2
Date: Thu, 5 May 2022 01:22:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.05-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651713778
