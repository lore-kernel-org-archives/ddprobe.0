Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13196361
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 15:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647099085;
	h=To:Subject:From:Message-Id:Date;
	bh=J+a4KG9VZl939+sBAL3llVTp0DJFTWWhS2qQ0BLApPA=;
	b=gOC5F0kU4OcGGt5eqnt5azJJi0shHebbl5tkwXVUqJ+ZBxOD6yE8gVD0ofvtgUiX
	Uiuwg1RCiKbqk0mAWz5IRLdmyovqdr5/emaiWwSDYV7Lo3nsXqAgpwpEHP0nKMuZvTq
	tdLw3GtheuMCNqimK1nRrH5WXlq7lbkdr9t3w/qY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647099085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=J+a4KG9VZl939+sBAL3llVTp0DJFTWWhS2qQ0BLApPA=;
	b=lHm49lo7GdMuQSxHTDr40lzBbtXIuRZ2Zlx93/duGKNCNdsA6/uj/qe/EclSo8RE
	8COiJeUxq5z2ePCWt+jbO21Akuxd/ScaE7FsQZKIYG5X8a6DaItgOTdstXaLP/VKeWm
	215bp7rtt2hhU4JWCZQhviFTmBLBFGdV7UGVQv7I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7ec17f9a-47cca9e7-642a-4cbe-8692-78990bb984ca-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7d3f0cf9827c0f37e65df9ccc8d480d03b171bc646f0b013b193be8770256ab3
Date: Sat, 12 Mar 2022 15:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647099084
