Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D4812568
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 08:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645520185;
	h=To:Subject:From:Message-Id:Date;
	bh=ukMue5KV5kM+x964F5kCV6TqdNGh6tN0gvsdpV+r9sE=;
	b=gUu5Eot0S9O0pbUyVJ9ALpM04YoK2Ol43i+Ljuah39+KDoyufs1N1G1Od0TvRx49
	LIOSY66E+klQcOK0T/t6moTrj7kL/j799Pi/2PykyOTaOSaItdZ/ur9IFp+I/4bZ2gE
	vPgGBbUByUZ3Plvr5F8rTMR+bZpWZfHT8HmxirUY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645520185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ukMue5KV5kM+x964F5kCV6TqdNGh6tN0gvsdpV+r9sE=;
	b=cmPFOuzIfAO9a2G8JfpSck8r4Vkedf3nIBnHrfdsxOymVOvZx45pIDTLVKCMg7//
	hcYpWNQyyYUeSr5y4TWFbqtMjsp+Fvkg4LeenqHmHy0fZj42yWfrYn9t6ZrmY9NdtOe
	IomhKR+fnKD/UeAYutm5z4ke4h8ayM4VaG4ckOvg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f20a5658f-04df5114-d738-4df0-9fb6-6d71f096d73f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6e68adb0c4a89e14bd1150593f50af539bdfbbaa76594849aa96257b2b77ccd5
Date: Tue, 22 Feb 2022 08:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645520184
