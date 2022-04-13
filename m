Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9B7F7B
	for <ddprobe@lists.linux.dev>; Wed, 13 Apr 2022 18:15:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649873758;
	h=To:Subject:From:Message-Id:Date;
	bh=RMz+aI7bN9KY+fUHNMCZXYyTAAS2VHhmi5FN+TQed6U=;
	b=Bt32AcgA40/SGsJ+9ny4O6uOT0GE3hh92J+1NXwTtDUO599tw1fZIBJqJX9J7D81
	pIiTvmxAo6EOGpL/XAhWv15EIJCs+RAyQBRSZsc+6W7rhrfKMilnLph2rdcZl7+KqVF
	lmPHslVUZGXF9FYxv7wcIegRW8TpsTHUtBqCLtYo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649873758;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RMz+aI7bN9KY+fUHNMCZXYyTAAS2VHhmi5FN+TQed6U=;
	b=WFIghWWJOqanuvM1XMqU39Do4dUghp8QlzST5mk5HsiD/kF3xyCbx5esQ478eNvm
	jxX0yzg91q3Z+FzHNqtgDg5WDCEL75iqb0VoZG2xMu8WINb6zFEgzapOoMfBpsv3DKa
	AYPiCdWkImqyr8F/r4+qmy/6didSHWLO1lRhT1JA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802423a866-6c718be4-6bde-406e-93c0-de32d935b7b8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dc987d1a6584cb5fad65cbe546451925cfbe4559e333aaf413f3f433b74dce03
Date: Wed, 13 Apr 2022 18:15:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.13-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649873758
