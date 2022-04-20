Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 183BC10F3
	for <ddprobe@lists.linux.dev>; Wed, 20 Apr 2022 01:08:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650416938;
	h=To:Subject:From:Message-Id:Date;
	bh=yAeqmZmR9bxfr3mXdRf5PLT3mSxRHXtLv12pdUlHQfM=;
	b=PYrG66DTjB3iN/dFM2g5fkaBZulqjB2SBQULADBUNEpHe1a7bifH/9to2tYDTUGw
	WuKc3dAiJTTnF41yScSMeSe4DixWvpzfwcUoAMc9oKn1p0ykTSRixM32+zijZ4nT75J
	5/v6ua23I9Mw55VMmBraffcQnzdlRbZyAmHtGaMk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650416938;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yAeqmZmR9bxfr3mXdRf5PLT3mSxRHXtLv12pdUlHQfM=;
	b=KGh24OZdWjidrE8FMy5KLaMuIHhtcwYQyTYr3scfQL16NLi8rcJCEprcfbVamnzk
	YqyZ8w32pS+AUwm/DaGaPowFfWwFCshZXEsmlEZL8tIGvRKOira34XGb0312mAJip2r
	Rd1cFcb7UMV4lxfpVElbqUpA1k4pBNNpp8yxnh+U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804483ed82-9fa531b9-18f8-403b-858c-23ccfb53dc21-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 20994491ce709453033edc0aeddf4236de8466b4e113f59166f51a3d0ca8e1d5
Date: Wed, 20 Apr 2022 01:08:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.20-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650416938
