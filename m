Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CDB57A
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 18:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657478212;
	h=To:Subject:From:Message-Id:Date;
	bh=niaFYNVbhse2BDUeEiRY1TqsWx1jF/4B3ZXCW/cNHtk=;
	b=ARTymr7n083oKwanBLu3IDCe6fxZIfEpCw+npVtej/j46lWj5LxtO6p91zGY8aGU
	GqvKRELgR6rLfLW6tvVdfbC35vkXgVe4nPIvynWrD/tbbWPTwLhTg0NZDqWu7j0fZCF
	mCBkCGgJ3dezZi0HWulr1afkcVylFianNHXJQylk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657478212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=niaFYNVbhse2BDUeEiRY1TqsWx1jF/4B3ZXCW/cNHtk=;
	b=P5MELFmjCm9G+fnNuraX6KLFB0t5FtL8yNWom8/ItY4ZbqAy6NstuM7zpJdUPS0O
	420UKpAsmcACCXXkYVLlzyBZ5b1q2+uZzxHrALsOlv/pl2pZ7/JZ4KtuMPPIrtlNixy
	BJtZfdXN5YiPYQcGcrm6nVeob84A00kVD/xP0Mx0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e9666b04-438cd05b-ec10-486d-a2b7-9759422c92ec-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1e9099626c316120af65099cf95e322ad3aa56683b4c0d955a5b0d933749f2e4
Date: Sun, 10 Jul 2022 18:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657478212
