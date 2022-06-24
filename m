Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CD7A7C
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 17:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656090412;
	h=To:Subject:From:Message-Id:Date;
	bh=xaXMboIk7fCyvaPNSQgasQKvmELWFhvkfzs2/TzkeX0=;
	b=HR1qu3G8R+tGh5TS/0ovPvIcOW2RC16NCrHYcWmz/DolIY0L5eomkKa1Ueqvi0Va
	CYxu5nIZWlBxMyQsukyy/XBR1ZTN/XE9B7EttCrH/xY8QljJgn/bqzKZz6gk9oZNtAq
	UEVF+3ucFmq04+5EJC2CMjIM223kL74xFpyPEaq0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656090412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xaXMboIk7fCyvaPNSQgasQKvmELWFhvkfzs2/TzkeX0=;
	b=bkgpnSSfPWsJO4nE0aMDfz5cInotpx8eaymIpQ9QTVnsvdqotBACp0GiBjfSqWFe
	k4vL3UuTiSAf9aDyBg3ITG+RfyufTqsSncojegoQgtS1b2Bap1LT+hmyndCuBUNQHjl
	hQfGz1yuV2L8xKK4GGXKwvlHhSwRB9FEegfoB5wY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018196ae44f7-84ac30a2-1c39-43d0-b1f5-f4b6226837ae-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b1971cbcc2a445def9f6579974d316aa5b684203507f9fc132cbfd3ac1de734d
Date: Fri, 24 Jun 2022 17:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656090412
