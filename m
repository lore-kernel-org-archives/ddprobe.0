Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 638B77A
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 19:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646595984;
	h=To:Subject:From:Message-Id:Date;
	bh=jxAAlFQhTyfh05tIXoWbblUULsa+fENLpeBCkFWdCag=;
	b=ZmHzKsgMzvlKM1W4Nb2501q3AMKqyGNmyLN3Tb/7DwR43ry12kFna4nKh82oqp3Y
	WD6QncJPyBhxCmlv141fLY+Q8EGsOiXrr/DzbckuZaWGSk4wSPtBbyE4i0SGJnKF5Xr
	49eNDX9o7uAu1TQNh2N9aezNcSyUHCXGOMhjmt30=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646595984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jxAAlFQhTyfh05tIXoWbblUULsa+fENLpeBCkFWdCag=;
	b=AodgkRnYjOeIfEO+qbQ8y+/UZCROpxTqCHpk8+e1BZEBCB501QwPMBWFN7pSQJBH
	TuHz4dabNLuSlc0Gnd54uMWhPx4iXPLVOsCEbV+4e7Vd4rYefutj2ISnk5GOCsNXMt7
	4/bbgKx1UhtssuOeD6/W/wtGcUj0j+Or733OjPjM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f60c4cd6d-ae3438bc-0c90-4a77-894d-d3060d1f83d9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f9e6b74f009bcec3dc806305f64a56f5f7a1c5f31156df13fd3b14086b742182
Date: Sun, 6 Mar 2022 19:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646595984
