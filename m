Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84AB038FF
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 22:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645914084;
	h=To:Subject:From:Message-Id:Date;
	bh=6cCuNhKAnDAMAZPn+X+VaG1dMyjTICTe0dcCIhT6wsI=;
	b=FlAIvn6v30ZQaEXrETtNE5yCv7pQeJ0U3iIFPainhNTg/rvvnRsC1VHH3S52WozJ
	y9aci89A5LzjSiCx6eCTK3XcAl9K/knicWP0uFfhv/8yVr3ERfoRU7HULEkbaBjd1KC
	q3Z4XZKzwN0gV4Oh9W6YLn25to52sdDmZ1DCF6Ng=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645914084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6cCuNhKAnDAMAZPn+X+VaG1dMyjTICTe0dcCIhT6wsI=;
	b=Lol2sYMZZyJ5gEwfbWLM+noZNiAG3TpwXqTJD8xE6EpDGAUC/SFC+qvE1MtcB6sZ
	xeqCoHlWRRtSc65TDukWn4Ffqpp20ktPnBgtAO/RHqu9uWOR1QDd8jv/He8vxhbaWrU
	1Im6/GpSsits7YZjCtZiP3znOuJI+j99ghwHG1so=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f381fd5bb-42e38848-027b-4a29-b6ae-c61feb74a167-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 052612cb9597ffce41f02d0ca80833dfa91aad9c31486a245d593a05ae24b39e
Date: Sat, 26 Feb 2022 22:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645914084
