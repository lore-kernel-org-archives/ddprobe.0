Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 136ADEA2
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 16:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657384612;
	h=To:Subject:From:Message-Id:Date;
	bh=DlDiDmsFewLUb17Bmxc+8zCROtJPpDXTJKPdlE0RXeo=;
	b=ElQIYT5rAC+W1A7+SU+7gkdrhnUPb9e8inrFI5oyLCDEkMvj7+gEvZi5euEHChsC
	afKfDHEH+0+BMwsRwTqLaAjrte4WJHxW2gwnOAJZaw/yGSpy7HCT4BE/nZVrCvGI4MR
	hrEWU5p1z6a0FfXl89sEPH4rgFznvvzuVu9emSOg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657384612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DlDiDmsFewLUb17Bmxc+8zCROtJPpDXTJKPdlE0RXeo=;
	b=RKvEOA2auf/daOOna6YDgxwdy6wxCY492T9OXOL62Hm2rt0E7EYfF68VLR92/kXd
	2iy8OM1yVPh9UgF6lU1/BhPx2HpWFd0bmUsm4mLtGs2ZjzW2AuKo02wM3NdftXvaus/
	4BgQ92hU5YV7g4XD6QOupNi80ZC7nTFtvPncrr3c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e3d23214-393a77fc-0c75-4a4c-9686-7254286ed4c0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3888c57f56930052673edcba75f3b4026d2a367fed50a37882954a11304ca8ba
Date: Sat, 9 Jul 2022 16:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657384612
