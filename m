Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 747951FBD
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 11:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645789884;
	h=To:Subject:From:Message-Id:Date;
	bh=jlFSwm3D2GX5rUETdU7XKcKgwGy3sl85xv4eugFwH2A=;
	b=UYCJFivFmpclpQF6RoHEyYQ1E9jGgoB8w54doBBECg+yAG3MrAL5oU7ifmAzFeF0
	Lh6J3GZF0CESikSAKNWe3ojrvhCBCqcRThTi0NzpaMUXWYa+vWzqkBSYYq8X4HJ0Aib
	KHK1VnkYK7g5opcvRVdarJWuH3S7/bVk65rU83HM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645789884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jlFSwm3D2GX5rUETdU7XKcKgwGy3sl85xv4eugFwH2A=;
	b=MDmQ6Ui9n95rxEMIwmpaq3BRtsv6oR7+TP3RfmtdHdMdT8h0SgCkTd16+TPcnph+
	quYNaDhM4QGzhFSUZl+/IaE+uLvrzDZ7qJdLENX0yChVkJOncg6rvZQXyk3gfPgxkbZ
	glJkyVa8HYz5EODpLpOdH0Cl8L0/dyQbj/V90WxI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f30b8b17f-957d6200-1358-4837-b55e-6d5661e7055c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 67f0929875ec8833960475325c0a7b171751cbbf5b66ee7231d0c5a04b5324c3
Date: Fri, 25 Feb 2022 11:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645789884
