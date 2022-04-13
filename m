Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21E3623BD
	for <ddprobe@lists.linux.dev>; Wed, 13 Apr 2022 03:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649819218;
	h=To:Subject:From:Message-Id:Date;
	bh=FdZyD7p2+qSfuYl9rP4OTVtEPetivGtY5Zg4yiwWi7M=;
	b=CT062OE8dq/o0CNj9eFUoTk+ZGe8k4fy0KyQYVQzjSx50sQC8RipsbGf0Msa3I81
	3cC79R3zqpHytdjfYvYSwuPLm03V+KIuORdwf/B22rfQqMF9A5owplvLKqSwmAK498O
	bP54eE8FKzkcGDm2cwoceDxJ1reVjnUEf5gENk4E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649819218;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FdZyD7p2+qSfuYl9rP4OTVtEPetivGtY5Zg4yiwWi7M=;
	b=FRZXOKL9a3lQhsYF+UPR6ZUZsCAl8M8inLEeLlGh9PsGcwPJvTln9GTFx5uDcJCr
	9xOeiSSESj+pUjckX3dqNIj+wKFsgbxoMzNqbFOlvxXB723CsonG3h31ZAy9ubZfZBX
	lK9/luRcIf8AXaYvH5hi5L6nzxKUzvG1mrAWhlGg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018020e3715d-14ce55ec-1aa4-448b-89e8-2abcc4b6ae80-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b780f080bff40712ba016ca14b7e0401745ff7ae655d4f6c9f432658ad5ccd57
Date: Wed, 13 Apr 2022 03:06:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.13-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649819218
