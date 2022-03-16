Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A53422F2A
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 14:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647441984;
	h=To:Subject:From:Message-Id:Date;
	bh=+uOKWN1jCX6098UxkwmnjOkQ+/o2/oZuTDgamiqXCGE=;
	b=WQwcr5TMjfstHx2b2pPJyvrDmm+QNLclI0JRbwOrA67wfzeF9dZZn9F7VPnHf7ig
	L25GL4Fx7FxKwSH0ng8/TYsKnS1aOeG9MbwG+WCfnyuLDbCi1kPKfMo7HrLfudrxhpJ
	cjiOqfbt0R/yagcbu5K8HHxtOJ/qSI8eZucA0+IQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647441984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+uOKWN1jCX6098UxkwmnjOkQ+/o2/oZuTDgamiqXCGE=;
	b=FV1S0S9QKfQqfy13bNlFwDJQQLYChhmzXMHAPtkQQ+NK79s6utgaZhe/JlAVErBd
	Wu9QLLSS2x1dD/NgCYrOj6pHSk2G4O4Z8tFZye/Hxu216Vavp0n1PeI9OtOe9BnN36N
	oUD0Vw2/vL1HDdhTMmZ/FKKcUUWrTj9tHwuvETYk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9331bcf8-2c03e3cb-9041-4fdd-9d68-5728de1b2788-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b2b35f907857204eb2749b3ca78ef8679aff24ce06a518537491461c67f1588a
Date: Wed, 16 Mar 2022 14:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647441984
