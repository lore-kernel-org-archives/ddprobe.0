Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FAAF33C9
	for <ddprobe@lists.linux.dev>; Wed,  4 May 2022 17:31:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651685518;
	h=To:Subject:From:Message-Id:Date;
	bh=okwQ9ft8Vh+ttPHT7rCYKexWrJtx5jkEaP7PRuqTSj4=;
	b=KyVFIavnno4ue/241PznQZ5lOtDyB7NA7q24aUGFWnPqP1TNDTbiGvvjdp6sVQTP
	7uAXEDdzuGBZnBRHxQxiHo8mTCSNZxF967dCrs68HSzIpg3JF0HlDr/bNuqLHjtJgy7
	9je6nCR2LCGQNADeu6kHi0DiqjHDSxkL7Kv4aEjo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651685518;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=okwQ9ft8Vh+ttPHT7rCYKexWrJtx5jkEaP7PRuqTSj4=;
	b=ZRCnH14Bxq6mcRWtRLery6Ak4i4AVJbjLFnEzskTCkLdUf4vG71pbUPnvlqFZ1Lu
	zghDW7xktbv4fytDPtEEH34cQNe2BBeGizW82Wo7qpqJxB9QMoy7Q0SykWIsJcu+DwW
	J8VctDfCzBtOvOFzKUs9XYPDJrZDu6HoAUTfALIE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101809020ebe2-d28f15fd-3675-42dd-8d20-cb2ec2776704-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: acbd777f70d94ad9788634972e1e1fe919f3f1f3f3a6ba175bb8ad6ee0fd6bb3
Date: Wed, 4 May 2022 17:31:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.04-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651685518
