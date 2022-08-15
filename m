Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78C397E
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 16:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660581052;
	h=To:Subject:From:Message-Id:Date;
	bh=H5/d2kHU0IXk+5Me7W9uel6g+xZL1T1rbMzzcVXer7Y=;
	b=XC2luz4X4Zpi48IOZE/uUfvi2zH39Z0S9QO5aa25qJUPGnM3NPfuxfvi4k4oLhzT
	CXLyC4zrDEHcMFTKhKLNN2WIS3kB+nEBlkcgHKkbIjSSXl/gAgMc666V8OAt4YnvulT
	2d8WDaPcL43ApnsyLEQ+ez3oIgP0qgdSXuHoMmkE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660581052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=H5/d2kHU0IXk+5Me7W9uel6g+xZL1T1rbMzzcVXer7Y=;
	b=bZYUW7hBPWbqXceOyjLBjMFxcJe9CnUpbs1RFo0AmRP0bAbfh0TIrOkpyvgPEech
	lVmQ+8fY0suWwjqtmPrulj8D99LaO7JB9EAdVthZxW1rWI4o3tQDy0tyzWS0kMdlMij
	EcxnSSr4evGUty5tMSh1Wq31LrhqnbHfRVSdbrWA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a2580096-225cdf62-26d5-4f57-8cb4-7199fb360bb9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7663155a145c48fcc29064938934a3ce66b1f3b08cba40c4335ea0a44dcba15e
Date: Mon, 15 Aug 2022 16:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660581052
