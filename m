Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 297B0A2A
	for <ddprobe@lists.linux.dev>; Tue, 19 Apr 2022 01:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650330958;
	h=To:Subject:From:Message-Id:Date;
	bh=fcN/b86eTQI5ROB1nyaeBt2m9UXcUZUM45tGRrW7shk=;
	b=BbQYDcqWSJTLLhq6hKzXbfObw80Wpm3iEKSx2Oboe5/jUMi/ti3ol4MlKd1dokPf
	ucY0Wtn1NUwu+YTb5eY0Rf0/0//StojSLZDp1S5mc6Vt9SP4NX/BUTez++FWKggoYK3
	TDHbmNhUfRRIIu4BcIi//b+Owwlyy9gnBwgwh/Vo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650330958;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fcN/b86eTQI5ROB1nyaeBt2m9UXcUZUM45tGRrW7shk=;
	b=GTTjT1H4AuyPtYfPq6KyBhIL98wQjyzINKLz6v5Vwmw8uyt0EKBTyH3dsyQxtjWN
	Et3eTrADjlNBOu8NlvjJvPmkf9Ix+YRWznHb7joZNWZCPLiyIjyTxR5ikbuCvxa/Ocm
	x9JOtX+GCU0tLN7sTyCSuHyQgqQWVyX6vNVPfxKc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101803f63f9a8-5c54e080-2b90-4d96-abf4-218c372314f5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 64303710dde50d32826001004c1aee89c7a63a4fb86af7c0828924290fd23fbc
Date: Tue, 19 Apr 2022 01:15:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650330958
