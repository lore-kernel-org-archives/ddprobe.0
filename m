Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E54010E8
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 05:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656652012;
	h=To:Subject:From:Message-Id:Date;
	bh=wEyzmlPin4f79sNRB29qOJ/+3qzNBvA4PIU6rnLYf7s=;
	b=fTptpKqYFL1cl2HcfO5tIniDdcMZVzRJmpY3mnN67N4kyyoMd9vKApZq5tBIwa/a
	wO6ciwY7Bf3j0xTNpOR+uJ58Fl5LbZ/o6Rz/6gcZart4YdXX8I/r0mLqPT7jMCHAEj2
	o6OIOVk10PxMKlvMB5CcS2k2E6s3SCsWPRKk2A2M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656652012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wEyzmlPin4f79sNRB29qOJ/+3qzNBvA4PIU6rnLYf7s=;
	b=cMPdQha7dtWjBz3qbK+44DwRwzo86/xA9GO+TYmTub+Op2tUKwNP9hUhb8h+9gKv
	QMo25iLmCp43FwAT8o+qPT7LsBCmksZeFJp2JJz9VXCfCegafAsK2cXbgDEYtDl5KmF
	KKS39R0XzetvfmWAJShv3voxv4IM4m+VIrLwoNPg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b8279af2-237f0f35-cc65-4c92-b7b7-1e3605b34227-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0ffe49f42c92bebe95ccaf7c3ff05351082dd9a15c3c95fb74307613d099ca1b
Date: Fri, 1 Jul 2022 05:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656652012
