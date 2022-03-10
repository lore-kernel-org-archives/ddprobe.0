Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCD4E5A38
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 21:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646948485;
	h=To:Subject:From:Message-Id:Date;
	bh=IpezzMiaWtkbMxo/BzA7hVrLwYXkJ8crgzxbxiGTKsg=;
	b=lY6HwRr1jr8BP5JfY0IKSsg6MAkgYVWu/ZuQfMLXP/C7Hc5WNzHsKSTt9RhVSbFS
	hDowwWxFO4gcChG3QKs3RdNA2WqDlWoN6ne8Kc4+diwcLsXdDCqJk+Lx0ofebhhnePN
	Pu9qj/0ZjipaU3ayYmm4W9mNrr9XsH9DOZWEHOpo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646948485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IpezzMiaWtkbMxo/BzA7hVrLwYXkJ8crgzxbxiGTKsg=;
	b=MXLHsQBgw6+f5vD136gU6Y5wBKpIUGzEvg5ITNlKuHlCcNGv2FmhzpqLtz0sXxrp
	r8CU4LXin0t18e3IPyr6R56CKSUF9jgxiAAW93P8AqD+nWVi8sSdAxIIde/+HgnUcDW
	0SREpmHZnmx0Is9qYys0VGoAa/vMb3FkvHk0CP5Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f75c786cb-1cb3fffc-703b-4c9b-b391-313dfdcba92e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a5a1232f106f21dd8d7a2ef84dbd7390fac7ccbee59ec9fb412fbb007c21ed25
Date: Thu, 10 Mar 2022 21:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646948484
