Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6A673FEC
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 18:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647284185;
	h=To:Subject:From:Message-Id:Date;
	bh=gs1XZl5ijrv86Ocm8ofpVO+M1K6XPp3iMmVEJz9jckw=;
	b=dhZYUNB30oEHJRDyFjcdU4d52K43mRGOHIgsdhw/MfDHwPQwJQMUzzZjcxyvL79A
	LsbhiC5s/1jvoPdSAgBu63nZgUc6548cj5dYiDWxUsp1cFGPjGqyyfb3bK/ufmPfX/9
	S/9mt0H1dTbJFS3G4QM6IFN8uqk282dCdDNgn0k8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647284185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gs1XZl5ijrv86Ocm8ofpVO+M1K6XPp3iMmVEJz9jckw=;
	b=fnQCCgkcW8QQkqGfVDtMEJNtAVim//AX3OWm0iea+cpQoCLIU87WD4GzOJnwzJQY
	XZL0ttGYzihKy4KoD3esJB5QMPdYc3PWxj0VZXzDLFwlHMbEzVArA7+UYi+MoNhRCEh
	wMELTfJGXQ5ZXfC6Guao6NuAgQuflMSJGPs+O6eA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f89c9e72b-df69ddc3-11c4-4695-aced-609605ea0a95-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fe248d802a0b87fd6ed068ab78016b611fac0202e3086da8fad2d2d85f2bce8b
Date: Mon, 14 Mar 2022 18:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647284184
