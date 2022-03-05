Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA2BF7E
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 11:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646481385;
	h=To:Subject:From:Message-Id:Date;
	bh=mYS4tfnHguzG/gyOkHdQhNRoTsPptSJQAjxG0U3cZJY=;
	b=IWVD1eDY8jzDVvQa7Hh7ueGsRxpAshbijtZ1SaCJzSIGrcte51RIEXNR9d5oPvtv
	D2LHyjXeuvAMpR7qHNsBMMTVUukxgH8iGcCbv7zWsoBB215wdIdsSjPq8u2M9xAcBxv
	JA5oKk6YboZCxJzcLzlSLYk3KkT5RWna/VvZ0ZFE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646481385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mYS4tfnHguzG/gyOkHdQhNRoTsPptSJQAjxG0U3cZJY=;
	b=gvqk7Oz8TJOPOvfFh6pRyLEQIXVtj8/HQ8SiAYn/wOgsIJ8+gYqQiYFyaOkrMdCN
	+Y/czDgPIV49SFKo6jo5W1bNzmzv30d2xOjdMV6RYeN8w/atT7HlPOxXvlhhCxQxgYa
	EHl0vgAZJkXvRQ6kUckstZq+1NyxPX5ySzbkzWYQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f59f0253a-d1088e44-705b-4a7d-9162-3934354e225e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 411e6441c6c8de5a0aacbe065d9e30e357e91d7377705c58f8108c5ed40b8306
Date: Sat, 5 Mar 2022 11:56:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646481384
