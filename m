Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 716692574
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 21:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647033684;
	h=To:Subject:From:Message-Id:Date;
	bh=ACBDz7JV6YAUY9GdjMeRgoEfL1nl+FIvtjoGrQ1PTHs=;
	b=ZSpCvH9QbnNJKpX+AyXFl6nLdvzEyRJLwGurkU8+be+77uKMV3Xw7UHRHXyXP6rH
	LXLFPNm4QcxZpwk/wWeL0rMKWdBuPfA2qxn7mBdWKajjB6xKipFOKO7uBJ2b/x97/Bv
	qiy9rc+SgyysY+PquNzZMAqY5d0P8bvKJv66VdJI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647033684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ACBDz7JV6YAUY9GdjMeRgoEfL1nl+FIvtjoGrQ1PTHs=;
	b=QbiISw5Yha3euTLerQZ239jSxOKzL9j0Tbc7IWrpJQtBYZwemNArx5tBZJrrf6fV
	soG1s1Had1lGkdAv5+XZrrnXnrhg0rHrffzVxLBgOAyB15tssPjoAszpPMtzb0dmbl2
	/IAa/TSbWJGKI0m16VTxBy6DtPBteWm7HRtkewPA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7adb931a-cff8e507-290b-4830-9a24-0738a074ab31-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5345c2b740435934f160a344516dd8316126fd99e8a04c9961d40b5466a0f2fe
Date: Fri, 11 Mar 2022 21:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647033684
