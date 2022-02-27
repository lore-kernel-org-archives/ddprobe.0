Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAF0F7C
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 05:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645938385;
	h=To:Subject:From:Message-Id:Date;
	bh=d+PDCQleCGz/+trubAo2JsaH5FiyFSUVRGYO3F7cAVs=;
	b=agTIS0/JA1Y1lUazVcOdJ7Y6MK7SPraoClO7vC6fgUQr2OyuhPbX8ySiMyyDGh1x
	Jj2uwBxEVK2JBdapKl+7VcU80cQLrj3TzzZ2Bgh4v/5oBBowfOIpnejyvmUXVpcO7xx
	EdhIwf5DgnKSVX5Hs1TVQ2B55DIP1wzHjM/wLnCs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645938385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=d+PDCQleCGz/+trubAo2JsaH5FiyFSUVRGYO3F7cAVs=;
	b=a5tPxfzTax4qzgj+DMNTBaOrJVkrndT4OHUidXKAt9OM7w5ZogEOlppOjKCDGTkw
	Sb94oWZzifyUyXZLc9lkvsQntly+5yBk+Gq4zq8kg7SVMMqInC3QPauY3E/knInbH1j
	E4/lXcByDtHe5KM+ccBB3PfmQyjl6P4PSvh81w28=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f39929fa8-7f7ca163-2d9f-49eb-bca0-8518bfd5fe0d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b38f9dd23527d4e51c1847e04c3ba3d55d158e128b1dd1e36c72b4be644e15d2
Date: Sun, 27 Feb 2022 05:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645938384
