Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3730C7A
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 10:37:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655030219;
	h=To:Subject:From:Message-Id:Date;
	bh=5ooQMjGBHqpcbuEdrhEjqwxGDoMtJlot83RV9mPGjsg=;
	b=aYfH13DOd1YUalX0EO3VMrGVlYYiw/zOJQWbBm0GAtVfE/Aa0pByJLYRxUm4B8DT
	E9yw6eWDGzn5Sy02t64Q7/8J0naLYo/YyfUCJpowy+V3cjnxBN09c5ds5i7BtIfw1FN
	vFPM/X/RHGggirLcoeO0DdWzw4DULJhUp/QREbcg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655030219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5ooQMjGBHqpcbuEdrhEjqwxGDoMtJlot83RV9mPGjsg=;
	b=B6vnVlDztVKQvLnO8CS8e6Kg9X5ke8J5UvPTqRUhSZzBlZzMy7LyeQwCQ6cBezFd
	NvLBTfB6XBqNdalLSsIVP5Oeixsmkzc5JO5zPwrydw7lPTl8o2riT2YGwwtSvIaO93g
	MWsDN4XSN9JHUqQy8cEBv/ulmaAWh6+N/H2DXoOg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181577d0227-09c7b704-f194-419e-8045-bfd56cd0b080-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7cd5f701c5819aa5cf01e05660a99821019ea0ea2d23402506e5d2483cea0a48
Date: Sun, 12 Jun 2022 10:36:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655030219
