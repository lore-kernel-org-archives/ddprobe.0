Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 702ACA52
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 00:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657411612;
	h=To:Subject:From:Message-Id:Date;
	bh=VLFh+UBoGzeq94b+uc7jzYp3bvJdRP1LVY8FW16RFpY=;
	b=Ks6Bn992cDBJT2xBIwdfHWmG8QTHTynMf2ELKcipjA4S4w/KaUayBKN3PVQJ1CZ6
	N2/5l0ZdaamEUigjTgwaS1AJ1KN3sPtjLwwSjBY09jTlS/xpBb45ct1Z9u5NjgzZhQV
	wZlupZqwfiD8i+uju92JRyldCajDw/BAk11UQgbw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657411612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VLFh+UBoGzeq94b+uc7jzYp3bvJdRP1LVY8FW16RFpY=;
	b=BucJsp3WILZP/LsXtOpu5fM7kCm+Y2s2Y6MGnzXlA4vJC3OU+ZFHaWilONyRUhQe
	cn3UyuZJnrVBc8stu/qqx1mUIn9DAamY16Vhq5a0+pSIQdWDLH5N79KPflwT1gE3r0J
	Y3QktgxlWAAJ0jzAeW3L3Ufe1/P1o/6Nx85FeLPI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e56e2e97-ff9ffb66-c6bc-47e7-b37e-ec66d2e9f3c3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d16c7fe398a4bf120356391e8d924955693a1543ff24e700d969f2bbee455c70
Date: Sun, 10 Jul 2022 00:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657411612
