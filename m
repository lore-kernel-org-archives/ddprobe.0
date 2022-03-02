Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9051C2104
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 03:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646193385;
	h=To:Subject:From:Message-Id:Date;
	bh=sKzj7oBfe0W1UJy87o6AvoZWCXxrcIRK2KQ1MBTKo/8=;
	b=bHYG+2M9Ii+itTh/uhYq4qKeV2nzZ4VzqlK8O5aLbvL4ibMuCvrSa71tZg7W1JH/
	YM312mypvSfwJcgKq/cHcVL+qELPmvX7bwXqPMILrGHOajA/yEmffx3mvOXJy/Xk7/o
	0KKUr4SmNWc4bdiBjz12o3Nhrgkl0aefatQsz/Vg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646193385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sKzj7oBfe0W1UJy87o6AvoZWCXxrcIRK2KQ1MBTKo/8=;
	b=eZKMa/5FaF8Efs8w6872iEgyVgP40zuwBhqF6XJRtal/sF01jz+ROLTL9hj00lLy
	eaRc7zMubg/QYSXi5kdRUCmTtTonhZSJoLanvrm4khq21cOgb6ZCd29bNxDF9GeT8Dp
	uc6ldii6F+cnhQxd0JZT5N7d1730MqK05YaIHlcQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f48c59d58-5888f521-e416-40d6-931e-aa6ecd0ce801-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 14051aeb4ec6ab7b66bed8eee256f381f796acb4aac92481417f280bdeafb1d0
Date: Wed, 2 Mar 2022 03:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646193384
