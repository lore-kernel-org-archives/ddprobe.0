Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F23F57A
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 02:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646534785;
	h=To:Subject:From:Message-Id:Date;
	bh=y+8r95ve5e3ZXRWOXdrV84YKhPJ3a+ZvtjaIhrU8zng=;
	b=gS5x1mfFZnKviEFhrIlK3evYaH84ctnxIxdpx3o/jAVxZoknj1mmAvN9TpgQKblk
	95DgN55Pkz4VYVfuzIucIrvnW291glcLkzxJ4CmnWuXmiSqBh6gL/WTfuLza0gTaH4p
	ovfDL6vJeZC2w/Smiq5Ybz4ufYuG/+GHgWiVK+0E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646534785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=y+8r95ve5e3ZXRWOXdrV84YKhPJ3a+ZvtjaIhrU8zng=;
	b=LEXv2Pu0VXKwOvTunCYDzlo9Edkvnhtj0ji+hpNH32YESPDocMIGU7TUnrYdaT0P
	D80hdyJ2jo1ZgF2re0uROh40rtRmbklMde/k/TWyd6qmeQ8s0vob/aaguA3TOiyHQ7v
	9qID4P/msSI7tqQkF3Mso+pGQSW0O39mAsUzkszo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5d1ef783-c0f58617-a5c9-48de-96bb-5391d085de0b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4d6f2b2177ba79658b4d2f791594d267fb3c090d73ab45689ff9c868fceaca38
Date: Sun, 6 Mar 2022 02:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646534784
