Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C098362
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 10:53:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654858379;
	h=To:Subject:From:Message-Id:Date;
	bh=wSMpCuRIqDULpC4KQ5uV62wwxut2/hzK220+Z8Z/1XI=;
	b=IJB42o1MYmRlOXFLWamdJMHiTBi5iA6479sOhDyfHcX+u3ZYzD+sKfXuataicoLE
	RuYlLl59pgUiYa0ZAYxu5gTTKEpi0eJ3OkqgHx/OOyZegrm7ydwdryzJDt0k93mGCUh
	la4gai81KN0EduXg6EVYpZ98qlN6Gfb1TloB5PeQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654858379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wSMpCuRIqDULpC4KQ5uV62wwxut2/hzK220+Z8Z/1XI=;
	b=KlRNheUr6pCLlwYVEcZmEqCEJkUB44REjEHyfT8v5bwfltEWLsqaOAkqKovy8xqv
	5+STfuqm7VHYWog8Pnmu15zvN0quYVx/XedCMCGAKhUmpN59T9WDLviwQvBf0Ya/2lV
	+5meirqBpxw1IwrKyrbWtSFaP82byeTDlY4DRCF0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814d3ef016-3cd71563-1c12-40e5-ab0e-db808d4c9b8f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 656a3872783c65e2d80cf54b3ec87502947711257039261965a554e13ce3749d
Date: Fri, 10 Jun 2022 10:52:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654858379
