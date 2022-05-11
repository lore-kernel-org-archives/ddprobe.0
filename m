Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AA8515B9
	for <ddprobe@lists.linux.dev>; Wed, 11 May 2022 07:10:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652252999;
	h=To:Subject:From:Message-Id:Date;
	bh=+r9hLKxM+pOR/sELD7q/XNC1or2ynHO5rZumfRdAp/k=;
	b=RD4wdqT9+G8is4n+0fWyG6vVz55fErmAnRRz8032q+90gPrVG6jllG8T9W1aZyfR
	5TEv7AelCBN81utCY5AKjDTLWLBHh0mwxnuAJT3IGDVGgCawIsjdgeDEmKki2JXnt8z
	ReRDsPNSVe6vzqCrgBPZayTfo9O/lO2d2nYMjBG4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652252999;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+r9hLKxM+pOR/sELD7q/XNC1or2ynHO5rZumfRdAp/k=;
	b=hDg0jvqWvozx/H6GBbcwnXv7yDRb6goB/+QQF2LCN8Vo/u9fxpufRYtIOUHhuF9c
	T8UY3BLKM537cHrOM9eoh+RBYfeWuvtd/mIgOsj00arXIMM52EHPx2r68BWRFK7/drR
	Bk9IEozNzKGXM6ZlYipGqhS/A+W0662LbJfYlMKc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b1f3feba-db9de20f-5ab3-4a76-91c5-31fd3ee84ed5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: af7c8c9490690bfdc8ee96b98034822d28f437a60f3f660f54a6f4f7aa969f3d
Date: Wed, 11 May 2022 07:09:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.11-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652252999
