Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C6B2160
	for <ddprobe@lists.linux.dev>; Mon, 30 May 2022 00:01:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653868859;
	h=To:Subject:From:Message-Id:Date;
	bh=zs9ygvgTzNGnrEKH0cHK6r/H2aFwUKGHs/AF/JD3lGY=;
	b=jbta1NUnPec3ammU8ZcGel2jjLzKJq+7AQwz0jvDg4/ttFtdKLqgMPqYG7twPKDk
	x5kLdjI0qgYPb2rm6trFKP+ToWcwbOfEaAdc4KeF2T8qcyzTD3sFZnMOLTUETxKUNsb
	4Hquri4i2ztUldvn8cQUPtZZWsrmrr7zNJhBlCqA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653868859;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zs9ygvgTzNGnrEKH0cHK6r/H2aFwUKGHs/AF/JD3lGY=;
	b=Mft5D5sYu1O+NQEw7lmwjqj8MkddH7OJIjsISm/xq9tFGiJw+TAs5vVkm7MQIsBQ
	P+m+JcIaDo+3s8FeL34sWfSRTdxn5WFA5vwUAnsTGMgvnGYCT50iWABKzZe0IJwNc2t
	xLVwzH1/NJSLN66w3SsW/zloblRLtYPcxfiEZPnY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018112440f5e-a62adb6a-98cb-450d-948b-581064e1f8c2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7c03cce83fc6f02afe6a300004460ec9a53b8f1df2f0b2741b06b8008db73232
Date: Mon, 30 May 2022 00:00:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.30-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653868859
