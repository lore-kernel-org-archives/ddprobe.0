Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 817B4EA9
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 02:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659751252;
	h=To:Subject:From:Message-Id:Date;
	bh=oIJqnThNSW1JdMfVJcn8U2VORXNu8Tm3xar1Zc1Hg+o=;
	b=H5CAFBOxD7s3V2sqLkZJYobx57ZDScuxCMjak9odfeZ7XvTt7BuxVlUrXMq5NVBY
	4W4Fb6jwf+61+cSPSSaha0U3u8/kV2iZ3yDrHGZYgycid7U1+yGRc1Q2YHPawqa6Qqp
	Yd7dIsxVEeM9kWG/v6GYP4fE1kaZzxOWvQ91mCkg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659751252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oIJqnThNSW1JdMfVJcn8U2VORXNu8Tm3xar1Zc1Hg+o=;
	b=CZHk9I3zEKKbKoYeqg0A7LrjfSNXggE5T6bSChAfe9gpeVGctfkH4BAu+mx5MJAX
	Wv6qDenKI1JKctBZvfq/ktmNA4fPZel2xbXmnsDdJeNKMWrufuUJ12PQmTVpQdly8Nx
	i6T/y7Fgl+PD3wAO0yRNySz3kJSbS9a4/uUBwKg8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018270e242f0-b581e165-28ba-4f65-8664-b51060c22222-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 17ff350ed07bb70667f5c0fa977173e013da5459970c8ce2702bfc14c28b67e3
Date: Sat, 6 Aug 2022 02:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659751252
