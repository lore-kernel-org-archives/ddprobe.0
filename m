Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6CFB5C8B
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 18:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659293453;
	h=To:Subject:From:Message-Id:Date;
	bh=vnJXIG8U4+BYwntzcEbkZ9L2A1LEKyTEOC5PJIXyfx8=;
	b=eeAL/rARHXz6yJCF7uiYohlnisDx4Ly4UcyNUyvZKpQvWf6yeAV6NAXKy6smY4L6
	oG+wAekahG70LiWSqM6DUL+WwtHq9IQ4pq4GpnwnvceA8KEMgsJzexQTzHHw/xpQP4j
	77HmTHejX/6vv3lR6dRCXapNfYAQSq+O5tdsFNHw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659293453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vnJXIG8U4+BYwntzcEbkZ9L2A1LEKyTEOC5PJIXyfx8=;
	b=GTrSwDMh1kpRcgpBDApgNeauk3j85rlOC7r8fMsdCXOlq0NDxZiNHbdRziDQio7Z
	cTFgVgiMZmixC8XBlAdnllgmr0Gc9nA9ijUCPhHQHNPh2b6PxkxLmDz1Up7ljb/fLxf
	hdc7xqNOtz36mUchXlpV5B8mdOeCvrMQM86ROIBg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825598c909-215f55ad-f4ef-4c96-8bae-2b977ef1fcf6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a85eb8e082aab7e7a6cded7dad9a7b49eb9221632d950cbcfaa576876844d8c3
Date: Sun, 31 Jul 2022 18:50:53 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659293452
