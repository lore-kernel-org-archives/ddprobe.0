Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09F2233D2
	for <ddprobe@lists.linux.dev>; Wed,  8 Jun 2022 20:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654720079;
	h=To:Subject:From:Message-Id:Date;
	bh=2eua8Tk169slblpc+8oO7MCoJ1xLdP3UjtYAIq44lkw=;
	b=WicdYrhFuRYW7b6b/nYdh3Zfx92sBWAiXD6H2opN1EskPSL1Ehzc2NMw7gGIgaSX
	nsTRTgg85i3KBA2QNX5qc0uMomk1kIe6Z1dBAYdz9UmRWCgrgBJ/rU370ZBKsyIlVym
	x4mIbNq5YcsmHNk4eBDC2apf/UiTucnWz+WPdlXc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654720079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2eua8Tk169slblpc+8oO7MCoJ1xLdP3UjtYAIq44lkw=;
	b=MlNGOciGBp1gmsDe/RzVwx86DU3kV8X8uQrrLX2jCSr9I06gyr5dqnM7EONIqO6U
	W0A1xV/FR/nZ81+MO+jPPebvztgGYrY9FdMpANYIKCtCXgOe0zJAshQ9BFjgcva9+gw
	rjOm4byO+N9PcUD0bXhodxj2nHh+F92NUL7mwh8k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814500a588-1bd85805-56a0-4e66-abff-1231cc7ce4c8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 52f54e94d6557cec54089f7c7c345e4bea58d028becad8cf02d0b24da581fa52
Date: Wed, 8 Jun 2022 20:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.08-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654720079
