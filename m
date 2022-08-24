Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C69410E6
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 04:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661314852;
	h=To:Subject:From:Message-Id:Date;
	bh=hpSNNNlShLCK00Zou3UrnXPDESZ7QlJFrnGG0UkLRto=;
	b=eOZSBmolHb1WR1J1NXWj7zn5P7gSM+8lVrCQ2t5p7s1h2ORed/137AQNa7Yd0Ef5
	i3No+hvJd/MuxU4P5zxxgQqYG4tFbwvWv0Xx7w3HFtDVEGv93h/iZzG9Y65DC/dyZWp
	O8jN6qOhPeSYHo+VA6EFRxeZIzjW5DGu5Z5W6JZ4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661314852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hpSNNNlShLCK00Zou3UrnXPDESZ7QlJFrnGG0UkLRto=;
	b=ZUqWd2zNpUpIHKQ/PAj8M/CyPprWmHevPJnJVMqClQAmYzRleInXr+tCPy4kJNEd
	iqHhacD8NAUauuLA+trAsAfLTKbYvvsDBr9ZagYX9ID6kjBUpIoAfci+SbwuxEeen9F
	6aSgtK7iBoTBEJjT0Ou6QfK+24rxek4bC2oNi3+8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ce14e6cf-c9e91a70-cbd0-4137-82d4-c3c001484606-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c36891edd285ed7cdd1670610e63067e30d889689764fef58643325d4e68721d
Date: Wed, 24 Aug 2022 04:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661314852
