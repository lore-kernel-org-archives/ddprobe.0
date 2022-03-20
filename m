Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 703B47B
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 05:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647754284;
	h=To:Subject:From:Message-Id:Date;
	bh=KAoo1m+LnTYbdPbHPEDp346UwfUeO7gC656dHwDjXXs=;
	b=fYhvfTIMebzZDn+UJO+/TGmmW3zNjN3GsZ2C34sr6Odwrdx61QYCa45D8BhONGy4
	SHQ1qumDnPBZ8hwOpvTF/LXlYv6JUWMWpzc/O0Wi01toztsCPWYwD+7qeMNfeHsxt7J
	fLEfUF9MPCggNKFINdA+tiE5PhV6PbcIa6W7CVKA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647754284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KAoo1m+LnTYbdPbHPEDp346UwfUeO7gC656dHwDjXXs=;
	b=LRpYXf4n2URUjEP8tintx92TefnZlRNm9m2kxzV1x3+mv2F8T+46tZQqjGON1snS
	8WoCOY1N1D9TLkGJ93Tos9MnFen9yf3PDTPyoSD85ljTM8B8fiQrM+XEirdEbJXCtnm
	zwMsRIjBWaB9r/HZRbjDOocaX2+q0grI5RQKoeOM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa5cf0ee6-441cc4ca-9842-43ca-8ceb-d0f4547e7d1a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3a626c231cca9139eaf9b054d06133af8350ef2e7608d30cdd419c8d3a6339a2
Date: Sun, 20 Mar 2022 05:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647754284
