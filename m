Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45D9817C0
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 10:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648376278;
	h=To:Subject:From:Message-Id:Date;
	bh=rkbr3gBxR1CQnlTfbpgFjAdrIv2Z/oPExKq2JeQSN3s=;
	b=LXwg3Vh3dQGa5DhSrwEqS8NBXY5DHd+0mx2Ea1Rr9ZBcf3G/J+/0y1ZexYkSGlFn
	KLmf68afLBQWq1a7TzK+STAGLkXRagjBtUZtnXTRITBZrY3nwv9ZSkP1gXAZBNIBwVT
	KAO+2hLC9GV4ijSxgbkG/7+A1cFCn0DEMDkjhEao=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648376278;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rkbr3gBxR1CQnlTfbpgFjAdrIv2Z/oPExKq2JeQSN3s=;
	b=iGg/Pp7RYSnuWwsyzy0pgf68D6ZqB4zKcLXUhSG0bsKmQ9uB4MA6W8OHhYw2VUrX
	1aPzmdFH0NILNYU6uP5TebJaxJMtuuLveKGyMFCPowRk8X8MT/qYeVqRGSaMHgx6nx8
	PE0KRUE+XPvZnRwBIURiSpP+8+WuqAXpIo4p/j40=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fcae1ed24-87404e0f-ec83-486e-bb17-9002ad2ed92c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 553d6f19a5cc8e5bf42bc70c8b81a5d91db1e5bb89c71c559e0f49df3288f99b
Date: Sun, 27 Mar 2022 10:17:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648376278
