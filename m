Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 008527C
	for <ddprobe@lists.linux.dev>; Mon,  4 Apr 2022 04:05:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649045158;
	h=To:Subject:From:Message-Id:Date;
	bh=mDUZ60b43m6jjlyF6cDWj+M9ymI411a2a2fRN3RLjG0=;
	b=ZJoRsIXhpLvp5/zLHfPHThUuf/oAw043pT4U1GJ9wVpYE7HnWBTaeDGOqNREy++F
	sD/4TsuJGSnVS+ISAUKLdEPjjDDDFGTrg6aEbJdfOLWtMLrk9r5GQLMJRGzNP8RtRzU
	9bFZF8b+/IxJ4UkGWbQDiBNCDZRdtsDtm1o81XUo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649045158;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mDUZ60b43m6jjlyF6cDWj+M9ymI411a2a2fRN3RLjG0=;
	b=YC4d42PISG0jNa9zMf/twYb1ENNbrE8D5B2UY09CKQ6WHQbxBVRDBFV+dZ0G+OOL
	SLbKgpoBjJd6/puGE3s185feVv0Dsw3AG7BjyuL7q6vn/uCgrZxZP0LnfUeOh2hlnBz
	ITrAjLdnlL6AoEbv1Bx+9zJIhs6iNMGZqHZ0vlPw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff2c03982-2276539e-d47b-45f1-ad80-c68d063c689e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9da30f0c746cce346964a3ab6d2bcc221ef90ec09108574b2b9a18351ca8ba8b
Date: Mon, 4 Apr 2022 04:05:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.04-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649045158
