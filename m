Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 135361FA1
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 09:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647337584;
	h=To:Subject:From:Message-Id:Date;
	bh=3H0kRiSjg4v2CjibGKfHc3qCX3SGN5LYnCi+Hpi5hP0=;
	b=hElpdkI4cmUmnWG+cUrebSgL0A/RS7aEr8UlwjDhVB8v7o36eg+/4Ald7BQKFveA
	nN+VpabWpb9MhPL3SObzcFiMX0gfDGYGZK6p25/s+PxjaWwEJj0x2DiMRDcSqXAoW+H
	kn3xvMXTHixdjVDvOdESh1Y9KsN+9bJ1fpKYysMg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647337584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3H0kRiSjg4v2CjibGKfHc3qCX3SGN5LYnCi+Hpi5hP0=;
	b=WyjROCTb07Xv4pjfbj6AAZcmvcrzxSXJh2/0/FtCbukWXpL6R7iC/qUkylANbWK+
	gMbNw9viG2mCdFMGFbany4PhafZx2Qs7/VjqOdaNYUVj2sVNnVbIFXcM9rFwt0UagKd
	s/Z+p1cNpZ9a7XmS9QTmNJ7qX2lknxwhIETz4MLg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8cf8b84c-e5fb8393-b64f-4d8e-975e-edda9d51fe47-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b51fb21351062e150e870e8eeb7b715c3503a2f11df1cde219014c698c9e847e
Date: Tue, 15 Mar 2022 09:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647337584
