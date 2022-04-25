Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBF2E7E
	for <ddprobe@lists.linux.dev>; Mon, 25 Apr 2022 12:11:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650888718;
	h=To:Subject:From:Message-Id:Date;
	bh=d9y/rQo+6N+wamZHSR4yttg0NcosHHRzx0EBsVxHZVM=;
	b=Kw9IDXVR0Xq5eA2oEeBe3RAwNp07Rzm6lZhL152dLNu9gBuHKUBCrjvVYAE6a0+U
	0TfEC56VFQeuyF/F62RbOhWkSYaTjlwsnpKZyrocs8XFCOPatqOiR2QIAcaG/hYu0Yo
	JJs8ngDsZcJbCfBo4V/V89wUwfd0A9U9j8pHjWAU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650888718;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=d9y/rQo+6N+wamZHSR4yttg0NcosHHRzx0EBsVxHZVM=;
	b=Tv+VqzAWignd2iZCvap6LhMfH2tVbYMNOynHdmHWvhGw2XP39XNOjk79dMYo4RYK
	Ccx2DjfmJ1SIvX1/jzxBRfLRa9UJFgrX/6hUvVTNKQcyz0T0pSuSzByu0JqKdMG+xEr
	z8iA//7GQsG78FcpNZVhia6mKgD8G0FvophbFTmM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018060a2b7ab-dd863644-b305-4986-a79f-8f0ae6262a67-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ae8925634d2b7302dbef35c00f914d6cb49b1c339b4d77a52364ffc156383037
Date: Mon, 25 Apr 2022 12:11:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.25-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650888718
