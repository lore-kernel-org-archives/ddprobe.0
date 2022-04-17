Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 018DD7A
	for <ddprobe@lists.linux.dev>; Sun, 17 Apr 2022 08:32:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650184378;
	h=To:Subject:From:Message-Id:Date;
	bh=rqfxTqD/96q0aNdSIvbpYNeyr3ABpsv91LbnGfnn1XM=;
	b=GIb3KNMWrjJUbprUAVBHOpLh2+BKQ3oy9MxtcMdmlHgUnvqNLlfX1AyTqTdxj9OJ
	1sxu0RHtW+VXpMe3Gza1M/XKKc43EmdH06Y8Dln13j7THo3jPytoxPbUWrXdMnNuAqf
	+9FP6Sr6iAhR01hnrxscQJYlE829GlMytxuoAPkE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650184378;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rqfxTqD/96q0aNdSIvbpYNeyr3ABpsv91LbnGfnn1XM=;
	b=XSuKDq2Y3EnsdtBIASB4dCz3OGZUUXCIFfHsxpoDESqwxHVr21Noarn7pWRAUh5S
	z5DbWAnpVO+ttxr8o8ILjAmXWXrvLJNV80AyAenwrhfXhn9eZ719O8wHDEKQBYgLBtv
	9DSEv0h8D9MV9LKnvipWktreZLlA4dTDeWe1LirQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018036a757eb-a836f7f1-fd57-4495-8103-4cd899c5d1e9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 94be2974dbd4fc0306123c4f3699e680d36b2f7b771180c7441545228c72eaa0
Date: Sun, 17 Apr 2022 08:32:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.17-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650184378
