Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D3DC7B
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 11:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645959684;
	h=To:Subject:From:Message-Id:Date;
	bh=PvI+tTjazjfrgfPzJNTZsn4WscF0exGsgi0Hw204Dr4=;
	b=N78AUGIdcxQbPyM10bHl0iQbGfkHUo70DCc3S1rIqbu+1cKG7rGQUI7a1nbUDnHQ
	2Zzqgtw66hRtm+8+XttvT2oPXiCBw5vIylyt3KYqubu3/4PC87LZqWUpppxCo/A/eUE
	F9yVzVmwf22WFxEgbSvW270tpnUjLhIBQ4HKiD4A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645959684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PvI+tTjazjfrgfPzJNTZsn4WscF0exGsgi0Hw204Dr4=;
	b=WVIBcooQU1O8RaRfIoVXlEKdXVD7N8ZJowO8ZefzKjovs31Gk6QEd+kM0KcETmc/
	0Gc65SfBQRXxec0PZwgl0YDtnijJxKyniJWmCIXNdMFUY6tNHjwHZvf36o+g4eCdyJw
	EhMwUOyizO/C8+Qxnmu7jQ6ADnSSnk3GgSyouDqQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3ad7a273-407fcc83-0b6a-40f1-818e-6af05633630d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: da0f6a0f96ca35c957f7ded761f6e49af71e3da437073a7670318e173fcc6ba5
Date: Sun, 27 Feb 2022 11:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645959684
