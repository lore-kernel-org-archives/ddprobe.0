Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE4EB28E5
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 17:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645206385;
	h=To:Subject:From:Message-Id:Date;
	bh=oYq30ozJzYyIC2EjHMotfP8b10b9J9R7FmdvMvrHXgU=;
	b=SWyt0aJ75jY0cqZF1uzP0XCcCsv+ARk8MI6LmvH/JbyusGUYZCf99c0kBFg9x/HW
	aNx02WK/ByO6RJYy98LhZ5us1s0fAqQU2nQG0AVldd2lxRdqAT3zrxE3Z41gotCjAgk
	nK1aI52zeOOpo1yGMCTXO6ebV46gjONLYUxwuNKQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645206385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oYq30ozJzYyIC2EjHMotfP8b10b9J9R7FmdvMvrHXgU=;
	b=eGSVSK/NqbaZQGq3MWf6yDeK7PRL4u3WF7hUZSD9hI+wayftUHTfHz/AeYf4WQDS
	h8+8ThOehgC9GUHoWzQ9rD7qW6Hg9JzAt6Aol4kUqt6aE0TzgF5o+Q5SxCYNRjGL5qs
	w6Qj640mdXAG43wLEdomdx24/srBMlnEW5wAWqgI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0df130b3-41ea7f9c-f72a-4332-8875-e5bdc6ec89e6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1cad3e63f7f90f1e7b3bd7a74bcfe7c2a07dd9b7b6131266a4079c0e48c2f671
Date: Fri, 18 Feb 2022 17:46:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645206384
