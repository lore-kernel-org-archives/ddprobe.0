Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CA4923CD
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 08:11:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650615118;
	h=To:Subject:From:Message-Id:Date;
	bh=8fOkea4EJ4xxoELIso5cxb6w7VoQOiNUblGyI3lkHhM=;
	b=OO0OOWKSq0/dvNDf8kNE6IklXepNq26rl2JXGV5eSDmG0q3E1SpSLrVCpVV0M/Pe
	4HfQvK0NFIkhkj7Wpx1hR6ExMPu3zAQVN1ZMS4PWl32YXzls8h2BR3hJrDmN9lhEB+e
	XtsvE/8uVOYYRZ46tbgLqdQfYdavoYGSpe/QZbfs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650615118;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8fOkea4EJ4xxoELIso5cxb6w7VoQOiNUblGyI3lkHhM=;
	b=FQvQZXGN04OEdqP4YxVHJNUZuDH6TxFZhSwI7Mt/pvSdFy5EQAPBep5N1VrxVpI0
	estwVAUiE0SSok0nn/a+R/V35lAA7ZtyjMak1EV69P3u98LPHJk4AqqxGFK94hkCF2s
	3MxD1SHq+T0If6knj/YgjeD13rJRFajB80l5H08I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805053ea00-070ecdda-44d0-49e2-b60e-74672da058ae-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5616d5f6b581040c0e31527e78a970d000e86f74f3b4569563efb9df4558e4bc
Date: Fri, 22 Apr 2022 08:11:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650615118
