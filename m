Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEDD017F3
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 05:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647667585;
	h=To:Subject:From:Message-Id:Date;
	bh=Ou5XjD7HindVcs2+1kA8DQdfkQYD+sU+adnotq15jnQ=;
	b=QM7JQy0/weCnGHjhrk/HVtpvBk+K6flWnRhoH9AfX+hqAw+7WuaDENkcu0AKlGzO
	s30X9/oqNl93Kqmq6RyfQ+UHKgPxmOo4KGvatXs5aczbV3KQrtVFDiErZgCAqhRtRMW
	5Gj1imFZRI+5awdHw6pj5ji9nRJbJoxxwYjBVSYk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647667585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ou5XjD7HindVcs2+1kA8DQdfkQYD+sU+adnotq15jnQ=;
	b=XVx1RiosZVe4bN2BipGwXtfmJ70LTcPDfjtHTmoqjpM1FTPfZ0TqXy8W/cjuH4ja
	EV5xxpmONVmZtrP3hTxvytrkVWw9v3Zua+SvCM69WoV1A8UciOISaiv5+HX2hnhOX9D
	Afu49pFBM/nx/fK69jCFbegg1xHV7cwu7+4iBOJo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa0a41ec7-b3d36ef5-d1a8-4896-8ce3-78a2f868623c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b1e013e4358d7df74f3df8f2d0cc7748e5f87e96586be559c90ad83290eea17b
Date: Sat, 19 Mar 2022 05:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647667584
