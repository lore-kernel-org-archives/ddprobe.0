Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2948B1866
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 11:51:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652874659;
	h=To:Subject:From:Message-Id:Date;
	bh=9QAvhNBht4bh7dgIB7agRTfsKLEE3S5RG96+MpVDQ3E=;
	b=Ptc3QJ+YYfG4jwypFQJGquxiWpXcBCz2UuWNGFA0tPCF5xMJ6yhjby5hoCuCizIK
	wYDF9HU1nToI3L3ZlUyiHdVbezk5PWK0/0iGp/7PzGV//Goe/WvTUVbDf9qcWGn2t1P
	838cFUPJ6lFVT5dimmtYovXuS/GlQk3X+VZM4DwQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652874659;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9QAvhNBht4bh7dgIB7agRTfsKLEE3S5RG96+MpVDQ3E=;
	b=j1UGpjJD9gvu1fgYkSyLp5mBrEca6OmOPa2hdPVvojcs4g/EE2c5GkDTSo7aIk/R
	yNnzU1VXZeFjeYCCl8jXxVXzNOYYMAFCsJ3Mgv847ngc71zYsvGWLEne/4la+gKoNyq
	wrK5RUfopSxwUNZH7d3w0gSlTW2Oixu+FBtRl9oQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d701c5a9-810ebbe8-0210-48b8-8e66-440a20e6f66b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a61331a424c2f7cf543014b1b6a1ca42d869c72ee2e2b074c6d83065704f2bdb
Date: Wed, 18 May 2022 11:50:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652874659
