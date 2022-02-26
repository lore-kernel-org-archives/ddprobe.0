Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DF667A
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 22:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645916185;
	h=To:Subject:From:Message-Id:Date;
	bh=Ko0deyJZpq1oqPePERAqxNHu+kawdv/9KqchAulr2JQ=;
	b=hi6cQuzKzBMqdKQbamWHU9Sh/IoDtVTAUcB6gwzSK6VZzBzciJlri0YzRxYz86Og
	0phYUbsGReaS691qaxij7aLcUIKnyr3tVPUU4W80ILV5TXJSbgu+BeGDvWL3mG4hodj
	OF7cbMLMCcCkSq7KP2iISHDO6QXiXIEgQHZN3YNE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645916185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ko0deyJZpq1oqPePERAqxNHu+kawdv/9KqchAulr2JQ=;
	b=fPk2d5LzbHl7vmzuU0/Tf8+aDhE3aYGaX3SiVzB+6OzcZZxLxZOK1hVjlwTVigsm
	/5iXbNjhpyTdc4K8NsbnhEB28qGxoL6QnJQWE3wS8ffpx4A2EgVzDZLoO8HyGlDF6ff
	x+F87+101/osxGu/wpc4x+gLY+bC2+6XHwISE/XY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f383fe130-f2d020a3-191a-47ac-bd8c-8d5632da1d85-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4cef16fc48ae27156a0d93f8d839010ca85c74018667afe4003f09a4e6327c8a
Date: Sat, 26 Feb 2022 22:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645916184
