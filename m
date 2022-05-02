Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D07815A3
	for <ddprobe@lists.linux.dev>; Mon,  2 May 2022 03:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651462858;
	h=To:Subject:From:Message-Id:Date;
	bh=elP6R51aLbozSMpvfmPIkZvb8jczQTA8bO7+wcK4pl0=;
	b=QlbpWqeX6EX9X9VRJ4PV4o6e3RiW00AjrXrp6YA6TUOPgsgCs3nIuzE2SVptA4c6
	kcEJ4YrFo20RxUzx92B1oAF3TEobijff8+eQSWll6YJ/an9w9aSl7t3Gwhqml93OLLW
	2dxpIsj3xv0JBZq6U9Ob5s+VR0c8oiqVe7uC0ayE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651462858;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=elP6R51aLbozSMpvfmPIkZvb8jczQTA8bO7+wcK4pl0=;
	b=ZtawjRUKfWCKX9q9y/YEjlzIyELo0YhUCIG69vo6xB7QnaklpRTRCmVH+ZEWareK
	Epy6pD/HOOBcKXwsolMc9jhkNuB+YSt1PCbb8Cvw37L0Vmsk8L8dJ1R5M2hDvN4pICp
	mHyr2DLBz2YDh7VIXB6tgTkbuo4LO2VAumgmm1yo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018082db6613-e7804e35-a34a-4245-abea-e2e423697aae-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 759a289540339c01db29801f4abd7adf5da21550d5e62a524888a75d60c9a6f0
Date: Mon, 2 May 2022 03:40:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.02-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651462858
