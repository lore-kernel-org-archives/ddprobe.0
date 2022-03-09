Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EE3517C0
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 23:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646868684;
	h=To:Subject:From:Message-Id:Date;
	bh=gqHIvTOpOg1HeGUj3iDIBM27HFiPG7oCb9FXWf16gDI=;
	b=EmyUiNjMssmxiuIHarYGAYsPCdd3+rzQeVW+8tAP+CGzKxm/hU+UYGwM+YGUp2kk
	sZKlQvxHyvuv129zbudrFvXnGVGbZyQJQzEnDW4545CEORlAncH206GYJQxYwovO3Eu
	CIdhpC13gTBJ8hrzUGU2dz+JUF9TQG2Nzh+kT7+I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646868684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gqHIvTOpOg1HeGUj3iDIBM27HFiPG7oCb9FXWf16gDI=;
	b=huJVVrdcc8HPGdFlck80M0C5b9t+hi9gW35GjyDWB2e5InVciNLtwBDVyNTVEKqy
	9lX4jfDfIgEtYjBBEMPA/PSsqdVDcq1MYw7Tlz5JrAm9FQQ6eeFIVQnZZ0a0R327Io/
	z20Oa7JDbWx+EfcyV0VUu7k9MZCVKC/T7w/A3F20=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7105dfbb-546d3c6f-aca7-49cc-9f8a-a545586e80f0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6085dfbaf2b7ea7149e653d71cf7a1909fcc8a75998d5b4e239c4e02e94e268d
Date: Wed, 9 Mar 2022 23:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646868684
