Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB23F2F5C
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 09:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647423685;
	h=To:Subject:From:Message-Id:Date;
	bh=KnPsneE346ziYsNxqYT6KxN6cYKU/5wm8zTqwkphJPI=;
	b=kvWeDNYRiWUKo4BEIBD+YI9DEIkHVqzfR6yK9TvyiBSPNqhmjP4jk/T3Y9mQwSMJ
	jQt8yBjDmviLjCpIW9wkCaQDOj9kqMgv1fRNrpOBsQtSDch1Vr5EHPp22DLfYWxvh2u
	0CmNJqQvJx361toAhiRYk8wDIOmifhWalYMKN9SI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647423685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KnPsneE346ziYsNxqYT6KxN6cYKU/5wm8zTqwkphJPI=;
	b=Lx29cFNbG0dLPglkRV+ok/KNhX3Y2E3O2bF0VUB6BZekb/dS5pSNUE39kO+6LLXk
	2VmzlAaZgxtWSVBW2llZx4EJm1VnVtxxn1rTT5/+DpoleUs/WMZMmKjmb2HJHjZZ3uB
	hNdB9kVH2ysS2vsxy9zvIQc1rH8rmfZW8VOnjy4M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f921a80c8-bbdbe0f1-383f-4290-b01a-3ebda90f8ac2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 72346df4f260de51c523223be503954cf7c4149fd98c3d67b6970ec85de6a235
Date: Wed, 16 Mar 2022 09:41:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647423684
