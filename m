Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09EF0EC5
	for <ddprobe@lists.linux.dev>; Mon, 16 May 2022 11:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652700779;
	h=To:Subject:From:Message-Id:Date;
	bh=CoTaZ1sw1amn4k+nWqgCMewLvLDbWHXEjLThxJcYw0c=;
	b=CQyaqFTp/LcRV22owW6v1VGKs/13bYkz4uQJbjmNhdHN7stTNh5UGr5iocRwlfrZ
	bJzzBJREnqCKYPjjflQbh38d5jS00uCQBEcWgbCmw9GCpP+cSQ86ZR0Rn0WCh2qLCzD
	fd0M6IhDUkNOw3ZyW1rA/c8L3b+NHG1ChhzYEmwg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652700779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CoTaZ1sw1amn4k+nWqgCMewLvLDbWHXEjLThxJcYw0c=;
	b=Y4qGdIkhfdglnzTDwa56Ja2LnIIGr/mQnd+ikdPWzLsScBrx2aPN7ELkf8uzkZCz
	GWeMdxXAgCmz/qRCORBVl+KVZs+v+oOPjhySM6T3xN7tEXrDjYJjWqRKHNleTA9Koy0
	sWPSJk3kgbc/q0qPocLUM1R1OqblCM5GuNdL5ceU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180cca492da-a3e77a31-e5da-48f7-947d-2de111e40ee4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5b81f08bb28b42c3ef1abe106daa71f79fb8b53dbf6a0dda5d740b0a165fad71
Date: Mon, 16 May 2022 11:32:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.16-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652700779
