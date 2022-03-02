Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A30D5ED6
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 19:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646250385;
	h=To:Subject:From:Message-Id:Date;
	bh=61w0Z1bpYGcmAyOq4HaZjIzpRcV9gx1JEgPlgZuCn0s=;
	b=LBAZxw27lSsJTSZrvrFBeAFdxkw/MpXvyQn89kFzxW88Kgz9G0v3xxvIZ9wmxH7V
	aR9O6Pcaer3O33Dt1hlRZcloovrMXtNb1gc5axwwwHARlG37le5u08PLs3FLJewV/hB
	g8lrKiI7h8hV0J/Q4+v4cB9XgCXLuLvrIMWD+ZRc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646250385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=61w0Z1bpYGcmAyOq4HaZjIzpRcV9gx1JEgPlgZuCn0s=;
	b=ipeDtvdihC3HXn/UYlNIvyJ2FGCbCRvU5e/X/+VWVzoT7wSdBf7UUdUooDbSCs0Z
	bZPy3chaVDsP5RRkOYEQqpljtdQle0V2ALpoayTY9l51cCseqBSQmPCYo2vBKgv1p17
	X7Pk9l3DfrW0B69UtjKD37E/cRSArZj5gW7epdys=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4c2b5d5f-1608793c-eb5f-4118-889f-5b34accddf2c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 736423e976a1127b793c81d694aea6880741a046289ec8c3caca55b96314e90a
Date: Wed, 2 Mar 2022 19:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646250384
