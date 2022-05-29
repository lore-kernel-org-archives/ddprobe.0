Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CBF417D4
	for <ddprobe@lists.linux.dev>; Sun, 29 May 2022 11:05:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653822299;
	h=To:Subject:From:Message-Id:Date;
	bh=06kll8UDhKGxlCPGZFbwIduJCdaUh0eMA7rzbxFNUB8=;
	b=SmJyXuip6MUrgUqHcolqjEBwr9uYg3JjbzYoRjWVswuihIjND483rkTGrKa3Rwpz
	YSFncqDpAwNU60p334XQe+i7u0h2E4cLaxOTcRu0I7Q+xgOZPuOYSbf6eLTc7nCUPMr
	GkkvmXimR8XiKl5AHazGByvZZdhSXdYpBUrYyxHA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653822299;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=06kll8UDhKGxlCPGZFbwIduJCdaUh0eMA7rzbxFNUB8=;
	b=PrO7zlh858l4RmdPaLg9aD00DMW/1nIJ6tTtmtS/oFs0vsoFAXGBagZh50BE6KAX
	gCMMZh/y7UBGEGxY99NWEyqiJKitEbHwdMpT6gh6QrFJteg+0/YJiBQGl8AByh9+Gq4
	l5AmvezK1MPhMG7e0CBQjEX63Ky5a0lm4AoLkw9A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810f7d9c55-db30cdce-f363-4b8d-b7c0-fbbfe6bbb0e8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2d3ac95b341751f933b064b918f04c392d0ed56c9e1f3e6dacd6f5f6a8c4b806
Date: Sun, 29 May 2022 11:04:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.29-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653822299
