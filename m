Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0071123A4
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 08:42:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650616978;
	h=To:Subject:From:Message-Id:Date;
	bh=8BlWvI4qNOOTZGu06jl6yW3ZD6qXGWs1qY5Fg8ESf5I=;
	b=BEsu0Ei5dsNtebEnmRmTWy6SZLc/enK/yt2vmwB6IQTZC1V1mBQhmqj2Yk9SujtC
	IlFdZwIWRfCQ07Ys64CN08mdVG4IsIchfpoCcpi/SNmuK55wQwR0IvVU2EibPavEUaK
	aAaJzNDZOSx8bRMvinr1r4owdvEveSuV3WDSOta8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650616978;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8BlWvI4qNOOTZGu06jl6yW3ZD6qXGWs1qY5Fg8ESf5I=;
	b=H3J8bWiWTAvtcpyzynQEzeb+0jRne3pYKCwkDxnVgUYrnWH58eRpsIibvxL+s5a+
	isGbdMfsCUi6cfGdbEYQXApeelkWdI5hi2ONpnrYofALuxoyORLtXw0yefym8aF8S5L
	hewhKOB+v8YX5KJ8JRymssNt1DcIuej8buk7Uixk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018050704b3d-12dc9bb6-364e-4dca-9188-5fecbbec090b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cfb1a976107c2b666c985a206f8a583226f915e50469e079f0a9230bd4abef46
Date: Fri, 22 Apr 2022 08:42:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650616978
