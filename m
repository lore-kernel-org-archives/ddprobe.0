Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7909C7E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 11:06:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646996784;
	h=To:Subject:From:Message-Id:Date;
	bh=fPr1VR1GsWGOsv+b8slVqAfmUkXHrqrAIEsZ1yMwOQM=;
	b=l0z7F9+aSSsxHCyHglBT7UoZwpgxQ581d5LNqYgNUm0w5w1Hl67l/LoDgS+6KAmX
	Nqxo9+ErTPDY1Ic4mYaitvpAx6nl00PfagPA1FWjwiazsVyQBXBz7/AXceBOLrTmk33
	F30m2OjyT2raaLu5gLZmBnc7no1RoLHm7aZ0nLD8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646996784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fPr1VR1GsWGOsv+b8slVqAfmUkXHrqrAIEsZ1yMwOQM=;
	b=Ic406lKzfJUaPTHNOMd9q7QXw51lsj6TiwbdyWlRcCLUaTDNXG2VV4MQsZqX6y6E
	m2nqcUnK6u/rVkN4fq4HKQpx8T0gBHElpfZWC6kl1gD46a5FtUtetqfLgrZmQ3OsUNp
	MdJ82QU7KdK2Ce3mBUE3lojGoLkZsOxTmKjK8lwI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f78a88672-98858d1f-57cd-4bd9-a4c0-b2d01f9bcf8a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1b2af8d92c0529128113db030cf4f3ef3289f6a4f6d6aa9d9d1f2c2da574a0a9
Date: Fri, 11 Mar 2022 11:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646996784
