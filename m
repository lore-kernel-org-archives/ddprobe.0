Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 783787E
	for <ddprobe@lists.linux.dev>; Fri, 25 Mar 2022 05:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648185418;
	h=To:Subject:From:Message-Id:Date;
	bh=3dYHmgrVsNXe0GPxfCQq7ay6hXaKZvXk/AJZczrtYw4=;
	b=Jn36LL9YCv9ZTw1DzFW64JTjaTq3OeDgnJnlC3fqsmmsOW04XB4Fr9jeRwaD0r+y
	eJErQySZZP8iyo0dPPQArpnVSZou3wgcSeIvYop2edCSLJggmdBKP1OnFD+hERQwEzr
	0gLwsfKRn2gT0f7z0DSBYOaaPfIOiOUtNxBLZZjU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648185418;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3dYHmgrVsNXe0GPxfCQq7ay6hXaKZvXk/AJZczrtYw4=;
	b=ehsSfwpRVK8yupQ0zN7kT1U6lEf+maB0qauYvQvw7o8Lk8eHBgPEiOXvexIDEC0v
	51lJ6nNqFD6tgno+vsgWMmB5p0+NLdv858EOah1FuwXRclj7M2RhG4Xj5NumFyvzGRD
	1zsLQWR1rMzMcy7YDIj+pwHNQCMp6k+SncbEa3fM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fbf81a247-066bb47c-081e-4328-b4b3-b87f01d9152e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9b61d876f2b1b6fc0eff64df626c7cfeb5c3ef7b1c026cd2974135decdb6fde5
Date: Fri, 25 Mar 2022 05:16:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.25-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648185418
