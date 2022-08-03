Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 395F87F
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 00:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659487852;
	h=To:Subject:From:Message-Id:Date;
	bh=FYQx86iuup6QpuSlBi8AlwzpoMf46OrdSaDCERC0Uro=;
	b=WgootY9TqgA/fDNxhHbyu6UHzMxxXsxJeDF/hQXbhPTUou7XcPmRIXKwIEYo+0y5
	DMiDqJ3GRu40HU4vx75V3MslkpGKZPGiTVQvjXQIDuOCnqYpUnYT+/fzyVMTNU356HR
	SItxEcC2e1G2nuLaHX2iPOBKBhJo9WSazqiZLca8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659487852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FYQx86iuup6QpuSlBi8AlwzpoMf46OrdSaDCERC0Uro=;
	b=QhY8JCtIiRFE2hdDfY8x4p/GNK60Ba9HQ5qFZXaJJSYVXcO/o6eCLYkNZM4QWJh+
	pYB8Fi6S3hMnCZcsQ1r/XtrUNn74EWL3d/PUHUHvpTt5I61HiLobD9DiN/wgsVO8gws
	2+Lm8KCaCNmW9aL2BafUW8vWE9dKMfXMHvRar9UI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182612f1808-575546a1-e076-4c64-833e-0f6e08e848a5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fcc61a861659c2f402829ad8f5f442a738f2800cae5da34f838dd5680d97cef4
Date: Wed, 3 Aug 2022 00:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659487852
