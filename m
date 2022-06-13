Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB653110D
	for <ddprobe@lists.linux.dev>; Mon, 13 Jun 2022 07:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655106479;
	h=To:Subject:From:Message-Id:Date;
	bh=nwYO3rgikTa1Sdx2dobzOOwnCHvZKfHjK6upFGrsgWQ=;
	b=PCI4UBP9EbbZxxKQYp4ZUBd0MOsYgoixj+09BEFRocJ6r3SZb489VmKeX/M4Rul8
	cw7l0smgGGFUMf9ID0UsgUAy5CCj1CBF3kxS8sJZGADmdBYSeuLkRqeymoJ/4wU+Erq
	Oh4TduP79XMcP3XdekvjT/OV5rgT0pxRnqGGsMeQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655106479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nwYO3rgikTa1Sdx2dobzOOwnCHvZKfHjK6upFGrsgWQ=;
	b=ZvsOmfWlSuv7bQr5inQOJ17X1pj4Xx921y/Rr6ASY/plza5vaGn5B2vR4JOd9Xum
	L5+/2fqOMMTWDl0oGkJHi+TVR4Mw+wve8ARApxDlne6ZSzBCouTvWy1HjCzyGUkeDg7
	A/5b5vVX88dhOptVSDSbGcsuZQH5S0VT/jJQQsz4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815c08a481-2b8775a4-b5c0-4254-8990-4220540ed15b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 35d0bf268745446530e86dbd0a145fc4a67dc4eaa7dee08d14a865225a470f36
Date: Mon, 13 Jun 2022 07:47:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.13-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655106479
