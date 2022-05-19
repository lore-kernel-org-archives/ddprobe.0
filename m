Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F4ED23AC
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 04:34:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652934839;
	h=To:Subject:From:Message-Id:Date;
	bh=sck1O0khl/vAzBPfUaQCc+v9NGvjbUk68LwR+hbtRRE=;
	b=iTK2hzrj6IofpzVzWaEauGCDWNvq0uMWMs1o/CMYjvzL8xmGIf7jOrMfbWDuHK9N
	Trf3j05PzEMfNtUjw/APK+VaYCU4HfR/JxvqowkmYrGUCm4/9CxQm/8GyLo6AAkF4jn
	4wxtF35kritd7vXRIIsegS4cGVfaS7Qxjpaesb7c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652934839;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sck1O0khl/vAzBPfUaQCc+v9NGvjbUk68LwR+hbtRRE=;
	b=ezWwu9hQdVbB9JNR+pmn69671j0MFXv2u2rzhyFzxMnE6y3Uq2jfaNNpuyjXXYfm
	fiuOTjh29AoTJq7y8xZKnOifiPfKr94TFfd3sZhwyQgXwNIdwobo0qqzl8QGVwdFVsZ
	G2m75+4i8xGyLi8P3sTvlzlBtmW/NRC+Y8EC9VRk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180da980c7e-d4e65452-4d22-47cd-9308-fb8d84128ad4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4e5c523b8cfc700b473528a38374402c12a632f558d77b54ecd83446c7828399
Date: Thu, 19 May 2022 04:33:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652934839
