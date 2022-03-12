Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D842361
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 16:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647101485;
	h=To:Subject:From:Message-Id:Date;
	bh=ffl7ftv+IKxa62RGQ10MTJ+TSE0vAsLVMr0KcdkmUOY=;
	b=SwyFHjTKX9mFpPhXz5jQCvZp92x+83MhkfLORlFzAl1hbQ5U+o3Vf8hkgPh1euRA
	5MzzpxxHAfSMrsPqsO3rLERTO/wlzfEbrfyoXMWMaiVyMmF0E1yYu5oOJ5sl+fwQjwJ
	7W3ERC03g8jwTluPakNBseaTp53HFCNz7BrAChFA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647101485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ffl7ftv+IKxa62RGQ10MTJ+TSE0vAsLVMr0KcdkmUOY=;
	b=UbrhvtCfH3pQgyfELHvGVLd5ChurwQdyATAGAESMOQd6ALDFBrSPAfXhX5f31IM2
	YsWCgJwE4zQTQfv3SdDJxoW6caPpAxzmlMokhFyZvzuVFtw4XV7AMDuhHqrqp6KF0cR
	tDaIZnyxUGTjjKLgfWU3UMhZLk4PjXqQkZ7YxWvQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7ee61f4d-0c4a1f21-27f7-40b6-91e2-e6df5b73f425-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bc254a2c36098c4e18ee1748b4c88a074c3191a25526099931029ace47a4526a
Date: Sat, 12 Mar 2022 16:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647101484
