Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C40C10E9
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 09:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653556139;
	h=To:Subject:From:Message-Id:Date;
	bh=rOUy33F7f2zoDAbKFn1bIVbtVzcRfN/rSfFdw1S6/OI=;
	b=al/3tI5T5QVXAyU7FarAEl4xijFGvkkJUpbqAjrfVa+QhNnYR2KcsPFgB8jcUcv8
	Yeof7dvM2jYdiUGUAa+ZOYQcFA5yJgpc91pvy8pPnO1vaZosIy9x8mgDpOde8aGKPbt
	syV2YS6pCh6Poiv/Ez+zmrPny+krBh/138+HJiWY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653556139;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rOUy33F7f2zoDAbKFn1bIVbtVzcRfN/rSfFdw1S6/OI=;
	b=hALRGkNYv+2qQS91IafVQfjvAdqPHuKdoHugDSbNsIuohEGos82ERVF+Ic0Ntml/
	iECnUGHwyliyP5qrZw2fCgmj4Zp97W3bsdT79qJqH1xMANmUx9OwMM4RNL5HZ59AdxX
	LJng9QxVyIB5Ab1Y3YwCoNpyeWnD4q6g7DUSdQeI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ffa05509-f6b9c7b8-5fa1-4e11-93cb-cc5eba68f2c6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8f52494f781753ff834fe4fd47bae755f3292fec03bc4fb7bcd709186a7777b3
Date: Thu, 26 May 2022 09:08:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653556139
