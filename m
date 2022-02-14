Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 610AFA3E
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 19:33:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644867229;
	h=To:Subject:From:Message-Id:Date;
	bh=bXlivcXU0nU4C4n0BXwWCPx6TP8Qqf9R1WRjkD+y3KU=;
	b=jE5yg/IuONdb7As9FbipmW7AStzGES2T1AdaJDZJU0F9fVsL638BTKfhCAti7/ow
	1BfSWn2wC56Ix8jY8moYx8UWgJoa0FG5ZFUUZMmMnUITsDb01bMZBQ2+/KEQNGOabuf
	OpIHFcC7kSsf4RPVzQrN2igqO6PSjKZhZONUeC+U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644867229;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bXlivcXU0nU4C4n0BXwWCPx6TP8Qqf9R1WRjkD+y3KU=;
	b=WFFiQydFfbfJ2NH5zpW3Zx7Qfnj2KaHTb9QVPP0MtSCAfXv8vyzoVd7cwGJQQGGa
	Q8XFsN9E5ZjcTkPglr74PzYAant/AFfAhIRt9eDhfwQdbZkisfUxX2KMiIaGey85Cv1
	L+HQxWRxzMgVUMkjW9CfujqOoCQn+S62jGcBIies=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef9ba1877-20ade844-73ea-4fcf-ab9f-f9497dd16bc3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 23d5bbf776dcd692717ac79123a92a4a8325dffb6e80a05faf2a9085bf8a9b14
Date: Mon, 14 Feb 2022 19:33:49 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644867229
