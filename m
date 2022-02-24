Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD3A67B
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 17:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645724485;
	h=To:Subject:From:Message-Id:Date;
	bh=AX4srnd83Prz/cg6pZxHPV788csvxTm3/xd056Dsguw=;
	b=NZbaxuaHU5kEAve9CuffXH7tyLLhHbCBWQaOUfcXu5HXuCW2BtLxBFmYSa6bRCYW
	Eiz/NfZpJPjos+LzePp8BiwiZLO1GNLACFk0h9TnUtqCgRfmGQYL2X4jUgAGvQyzbFz
	j/Pv64VqW3CBfhVNmBwteoKmA18HIdQ/s7rC1q8c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645724485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AX4srnd83Prz/cg6pZxHPV788csvxTm3/xd056Dsguw=;
	b=DqJzrJMMXiDdXBKfqfeb9WBQ3LjMDvj8foag1+DmK8QsKuw2M9JEFfvWkGybpcg3
	Z5+bRjcyWatjKVoktAtWRjkUto/xpJxbt+l8iFtKaHoAL17mSR0VVuxWuOtudbenDO1
	1ObyXlxETM76zImdW+yOW+bxa5h1Rp8EIddiSBjM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2cd2c4a4-c70a4b8f-87ac-4075-bf06-bc46c33358ff-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 36255ccd22990334420b19a858cb2ef1fe3bef0a052d792d1319674946982d1c
Date: Thu, 24 Feb 2022 17:41:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645724484
