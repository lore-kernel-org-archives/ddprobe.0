Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73E8C15A6
	for <ddprobe@lists.linux.dev>; Thu, 14 Apr 2022 06:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649916178;
	h=To:Subject:From:Message-Id:Date;
	bh=dxZ/xV0XE9I15uI+GKNuW40SS7hdcp1ldXZQNwAY4bg=;
	b=MA8oFR6Ac9zM1LjzAfzzS9asKBPYfq+HagcC4uHPh+J+09c+4lr+tfPWRpXdZh7U
	zBIoHRH8jGgbFuDDmxzT4G6s+V6hOHP/9p9mneB0uu51ixqAbJHkjaHOwWDa8wiH8rm
	RtFuzuiUE/rU/NzcPxOl/qIpHu7/D8gHTjnlSUVI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649916178;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dxZ/xV0XE9I15uI+GKNuW40SS7hdcp1ldXZQNwAY4bg=;
	b=inRtF3w9jHSbPZ0MrWJfuKUcsmfEUA6I1wUpjrzPLip5IoybkI0itLBgpa+IGL5k
	BmVlmrRG2EDvar/Q7xOlRAykk2JbwNVst8MhYJXeBBs+kcw5uPQKYDhRB/21DJygPIH
	2mnP8xLLxrjG1zmKoXkTbZfbUGQULllrfyI/dvYg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018026aaef64-b874ed66-cec8-4e94-9786-0ebb81d3dbc8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3ee45ab02554906b7effa861a9963c2dedc3cfb4b9c14d5a496020c84211545c
Date: Thu, 14 Apr 2022 06:02:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.14-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649916178
