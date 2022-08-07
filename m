Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51C1E1101
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 01:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659834052;
	h=To:Subject:From:Message-Id:Date;
	bh=Dgcd0bCWKba11JV57uNMLee3X/O7BYxSTLJ4oCgs9Ng=;
	b=GsK9WVcrHGRqchLC6kYmfkpPwMHIl6dhPGeHc/bDvlnkbNa1kOL5OUOsilCJD+QN
	jagpHLkZQnL6LFvI79onCj3DWHhqYTPQUTNdMKGnOE/SlC0fa747M1P9g4ohs5KPH9w
	Kh58kIg0O2xo0tm66o3UeLO/DkVRCuJoXM72AzgY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659834052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Dgcd0bCWKba11JV57uNMLee3X/O7BYxSTLJ4oCgs9Ng=;
	b=DyhCeVOCGsmOzWD8aVouOrmH8adMRBx3YYAHUcs3EQa4axLZCyQeIMUAhooFJ2RU
	VDL+r3q9o8k+uIV0LjGOCxdfTApc60vSsM4vIt+k+F8EKUE1EEWcLb9C76FYNlInJSd
	T9kvMe858X8Kl64W5PzAl7juVHBDlhP8Cxv8qHw8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018275d1afe0-d65551ca-a79e-49d7-868d-5957e0b6c2e6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c8afdd6cfe8109195336e25f6e3420a235e3b82f0888e08ac49ac8c8544e992b
Date: Sun, 7 Aug 2022 01:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659834052
