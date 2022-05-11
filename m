Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1224D3208
	for <ddprobe@lists.linux.dev>; Wed, 11 May 2022 20:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652302739;
	h=To:Subject:From:Message-Id:Date;
	bh=m/qFUnNXXuJ0CO7WwEzvmQ6LkK8VItBkgzBHurMXaEU=;
	b=HVm8BFGSjUw68BWXArc1R2t/jSmVmcFbvrZfpBROl1LYNqa1xeXeTRXWtNkCMVQn
	KwPkGbwtp1Vs89/409zLGC42s830nID1UUWSM2OAvlN4X6KF0VXA+9z9K8LCjQCxabp
	OTSjP8Fdkg8eVipdW+GyvBFMgui8WTtcYqRYNVRM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652302739;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=m/qFUnNXXuJ0CO7WwEzvmQ6LkK8VItBkgzBHurMXaEU=;
	b=UuV2HEuW45t5+fHEJXZHhxbPuJkEmZRusLbimkYJxKLn0mBVwZYGIQYqHdCJz5F5
	iA/znnM6nfTICyN8WvwvtbOw+9/yqVQBRaNjQEh6dR3SNk+LNWAb0OCGF9CWIz0cRvW
	0W3rR766wdWbldkiDwiqlA62vSMS7GuQyY2jDqBI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b4eaf782-ccb65dfe-7016-4b1b-bede-73df1e585242-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6907d1f9d05f144e53488b9f70ace744eea11765362bf222f4b1b8f06f2d340d
Date: Wed, 11 May 2022 20:58:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.11-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652302739
