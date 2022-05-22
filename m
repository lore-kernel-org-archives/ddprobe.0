Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9CBE2103
	for <ddprobe@lists.linux.dev>; Sun, 22 May 2022 07:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653205019;
	h=To:Subject:From:Message-Id:Date;
	bh=Ug3cTPK53ovgmS9N9uhWuRy09oET1ckturFQEgK43Co=;
	b=dM8fZFUJj7uo90uv9fztnjd3a8ZSjfx5ww17kHdl4vdH08fUjmSUhJcYFJijY0Ey
	/ZdVjZCjRTrv2mEmR/vL6ujPu478e5ck6IsRYtNZhEM/RCmTrxBjDxdokeXPRdTPWOP
	Dy2s3r+qGXweVYO8NCtqJ7Zxbgzkq3A2JWWaqnag=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653205019;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ug3cTPK53ovgmS9N9uhWuRy09oET1ckturFQEgK43Co=;
	b=WIpbaufWX3yvt1LWvgWulfksk84qvCwAkqUGT+8d5YFPa+x+bbq0R11RfrzeFlQo
	dUmKpot+SFD2AQQJev08FWE0GB+USsPqtFe9Sf5nSrFGGTHEHOvQgAAViV2oJmSV5Rb
	YLOnsPCrEyeWpWOOY4F47REX99aT/+WTyfGeApq8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180eab2aa70-c17e7232-b0ff-4cfd-9fab-6e7a292db18e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 611cc4d0788a1bc1853ad653a3642d10cdf71c558e77ba74b9698833bb1eb58c
Date: Sun, 22 May 2022 07:36:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.22-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653205019
