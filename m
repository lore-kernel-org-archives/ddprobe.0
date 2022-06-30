Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13B467462
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 19:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656618412;
	h=To:Subject:From:Message-Id:Date;
	bh=dKqsWgoXk805Kwi+LyAt2mAZNo1XyoHNaBxlLVKBIas=;
	b=TexgrHHuCzvpMYOSpw2NP3SFhWeE4k8yDgkn8Br+TgUC5RoblvbJQrVVqLnX4zKV
	0hF+rtYmKA7C2WMDGZdcFUArQXoXEGJtTGhAvkdhl0nazsZqpSs7wt+Ca8Z3vl8E30m
	Nx4qEGhhRgKk/FAqZCV8XACtV9z5lIge1FqihBgI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656618412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dKqsWgoXk805Kwi+LyAt2mAZNo1XyoHNaBxlLVKBIas=;
	b=EjnT7Npyx0ffijX/4hzBv3wWTMqBckYAheBSmRWKlvVgZIDjycUaw9mY+qbOF3mO
	boKVe0gcPNKrBTrUuXjjmFPE1JznQwy1x6W7QTg7v7/IXe1hYaUaGqp9KmHYCK4K4cl
	f9wlx056dIcpTkMVt3dzlDhaVelUgWSmc1pEM4Qk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b626e915-e97685d5-c99b-41bb-9ac1-41d101456f48-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 48430fccbf0f3fed9a5ef1f08eeee7e6dda39c49bc9c26eed8495d64304b4fb7
Date: Thu, 30 Jun 2022 19:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656618412
