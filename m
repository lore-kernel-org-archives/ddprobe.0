Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BF722F3A
	for <ddprobe@lists.linux.dev>; Tue,  5 Apr 2022 14:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649168938;
	h=To:Subject:From:Message-Id:Date;
	bh=1/hQl7qXF/M4zzttRAVWvQIoxJX4zS/dG1+wvrdRTNU=;
	b=QrgyiQpim47LRZO0dsQ66fZ8GkzZkP1AFwI1uh2+UDLgF/OF7iqhm76G4D7P44uy
	mWDWj7ARrtiT3ausLibX4RoyLWdSVRpQqxFt6k8uY0Ld8wdd2hllzWOyEWvisWuQgCK
	y/jutqGJC8sjrjaidb1+1uLJJ5d2WQusboelpp6U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649168938;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1/hQl7qXF/M4zzttRAVWvQIoxJX4zS/dG1+wvrdRTNU=;
	b=CQo66K4paaQ2b3QGrlm/v9Amu4PYNgEjTWDlgYf6PuaK+YJGFWY5xZbHAeS49+jY
	/3hNjWCLeA4CcZBuhJAlZudtBrnCnkzG60HTcbeoLMeSaysrSunQ/tYVDbPgyTl3FzP
	efhK4AtTyou+CqJtZC+Vf+anVaa3nVLxXmTbJqyk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ffa20f4e1-44dedf26-1a21-4195-9978-95e219ffaaac-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d33edf9fa686463b6e82dd47d8bd2fbc87d7a45e3759d7573605364285c6dcdd
Date: Tue, 5 Apr 2022 14:28:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.05-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649168938
