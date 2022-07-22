Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E09215A8
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 13:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658495212;
	h=To:Subject:From:Message-Id:Date;
	bh=xzIJL/mrIJxdc0PEPL4zkWkjdgkFHb4GGnFUdApl8cE=;
	b=St/tPxucDsZ2TYxgBU8cwyduqOSOLYl1/OIvUKrpnqDukiFMeeVl4IfbcxW5ExWA
	Mmpy14Mx2Mw6sAdtkgE+xMfHq4xY+WGJw3mknMAF6v/mFdB0jqq48idU7qcrba5OZDh
	Z+M4guQIQjBhFEIMKysuOrN8ohlKoWw3VP/8qu7k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658495212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xzIJL/mrIJxdc0PEPL4zkWkjdgkFHb4GGnFUdApl8cE=;
	b=SdufW/pwZMiOw8thSkfIAQ4wrf6+5CzCpAvpxDwwT3SCa0JEH0RbUUDvWCsVW862
	k9dtWwBGIBwbyDlnvZcFeG6Gi/bitgpu1vBRTb6kW4lFeRjdkfa75y801OCcet7m53i
	nCFLzOGI1eV/K79HZwM9zgvTrhB/TajrYim/1eQU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018226049afb-087ea239-70ba-4298-acfc-78e89bd902b7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3eab995d6344f166535829a265d3883633091a090d37134c0ac5ddae0c3222eb
Date: Fri, 22 Jul 2022 13:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658495212
