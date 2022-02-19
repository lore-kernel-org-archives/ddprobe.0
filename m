Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1A8C539C
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 14:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645280785;
	h=To:Subject:From:Message-Id:Date;
	bh=HnVdEtJp9j2tn4CNPhEeLTIj4ODSs9HbFpWcfEl4JlI=;
	b=XP4WLP2nH6CAE6FQI3gSGlRjtq59k/ZCWbFGIBFPjbRF5dno5WIW1DL5TMtmiyLG
	AGGbj83tg6cWj5Yfztl7WY9W8cXNxmvUQsEzPXCrr9jUgQTEz/HnQotdFQmrphu8vQ0
	qa5v4s12CqdhJciwpKpFR6eqR7bdO6UtkLGC9KhI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645280785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HnVdEtJp9j2tn4CNPhEeLTIj4ODSs9HbFpWcfEl4JlI=;
	b=hOBLep8ktKXRXVJV8qMrnAQL6ysEbbdEB3ORIIvPitU0Ii18w2yDjyMheZlAOquB
	qqKrqxRLGbFDvKQtBU169/g7wdeiAqBrEFe6CJu0UykrTg2ypx2iadE0yTnvQtFbOU0
	b1R+55VnyuePIK7nKQMo7+vnznMBuCh/8SLDIDlA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f126071a9-81e40b57-d6b9-4435-b9cf-5a7eafe4a26a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7b807e012750c5fc0ba23b02a358d9eb506ab7a447af8762b848069f725e3092
Date: Sat, 19 Feb 2022 14:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645280784
