Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BFA92568
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 21:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645478785;
	h=To:Subject:From:Message-Id:Date;
	bh=a2lnkAvGm0uW4UYg5uDXwh2KvsQnzQf2xZgeiSfUJHI=;
	b=N81UgoHfbelcF5Q1nC5N2LHUZ3x3boSdy29RyfiALvCWPVfrX+u6q4EUgbs/h4Y7
	OfgWc932SM1oijhrWQoooJN7IgSQAfAIT/oRuhG2TbWtGCJATT+hHtkYJqZJrVKKFeb
	EIOQRBYSDQqIDil4+Vo4AJ+A2vuu9hGCQey/9oFI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645478785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=a2lnkAvGm0uW4UYg5uDXwh2KvsQnzQf2xZgeiSfUJHI=;
	b=QYRz8Zhv5yIwFUT3PpLQjk3WS/bgiogwIkJUN2+ibKGiC1YdGWkopCJZ5eYG/O3Q
	DNFSR6AIR265FxzIuUdy5Xqj/OLrhuXOr5drrvXrx86PnlDo323HDevKQKKQYXg6CYo
	DToMUiXTngxeZDVhiZhWQh5V7ZPH3x88e0Fquij4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1e2daf40-0c5d61b4-4507-4764-a4a2-f6d71e0fef65-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bcab4c456eaf747b3811fbf6854a58344d5bcdea2df806d4224cdfd8e21e06f7
Date: Mon, 21 Feb 2022 21:26:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645478784
