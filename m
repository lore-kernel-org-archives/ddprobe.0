Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 338DA7B
	for <ddprobe@lists.linux.dev>; Wed, 13 Apr 2022 02:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649816818;
	h=To:Subject:From:Message-Id:Date;
	bh=rd9CErHntlHC/1wQMEcP66KmLhy3XU9Me4BgK6pv5L0=;
	b=ZHRXSwAh9vHrnl6c0FjQLKqbJ9lpGNmwnM0AxAJAuu1BSDrjPEm51jyyuwlPF3mU
	R/9GD8b+EZncJsWQ27XGzZwO16V2Ksr1sxL8TgDvfmRsPA1cMWQL5L63+ofn0t9a7/c
	XEyjt4zKiiK/bNRlat0C6YjiZiErFClBItXT3cnI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649816818;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rd9CErHntlHC/1wQMEcP66KmLhy3XU9Me4BgK6pv5L0=;
	b=W7XyqWejHO10mIRqriUylbnQkpfZyG3ofNxiL02h7eJqQAgr5m1mECzYJuyW+xOL
	oVNsIeD98XOb7S3uEAQbr/vs0+sl1+5wmMr+cOl8eppLYzp9mT8f6VpopxJsyqkEeAr
	q1Bx72uyrrLQPM/bBy1v3l3WJ9pn/t47SuD4vwLM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018020bed24a-44a81df8-acf2-48b8-8f1b-dba1021a5c84-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ef5b8969111f174030005e5cbbc99eea78dc8019bed62389ca4ea6e2de48d936
Date: Wed, 13 Apr 2022 02:26:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.13-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649816818
