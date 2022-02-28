Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A73677C
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 14:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646058984;
	h=To:Subject:From:Message-Id:Date;
	bh=vAyjC977/MjtuV7qfqr2tMXYOBettrncAIW/DwLh6xc=;
	b=NPgpRaskgmevpIaTwiolrGyN78lL+aDkXHhXq+YDrD/iiscNQqd0WT8VDD4t2wb7
	xx6poAAoljPE+6GIKF5AqkPxDMXkPw7SkDQVRCsM4J3NUUo9avbr/6q5C1UfKsTj7De
	ibhQEYp1Udp9jdHXOxUkO6PjJLXrBRfswfhDgCG0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646058984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vAyjC977/MjtuV7qfqr2tMXYOBettrncAIW/DwLh6xc=;
	b=LcxiPc2TJTZQup7BpZyFPzSo+L2MVFML3YX3LyHj67g4BDRXPG0j/I1GFfMBJd7+
	ToSHoTsVItlD1TuffKAZYn5mUJ0OeQYHQFd1JCpozqehiwdkBIDzIqt8CFlZHvvysJ6
	NCKRYpx9bXZgwcS1xdnL4BjgZBeEzOw73gPv1pCo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f40c2d50d-57a1bb48-9e3f-4e9b-86f5-f011a23acfe0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a981bf672d67887fa6df58515f14d648432e9faa72315d5607f9d8f5b3265917
Date: Mon, 28 Feb 2022 14:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646058984
