Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3656110ED
	for <ddprobe@lists.linux.dev>; Mon, 11 Apr 2022 06:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649656978;
	h=To:Subject:From:Message-Id:Date;
	bh=xucYWefdxAV+OAe6iu+wjXkxzMIMGq2f5kP23NzGqY0=;
	b=HGFt6kPnAgMcevwnPTbLiEM1zC4tYPfaV1ElypnoxGQUoXLM58511HSe63MoneeD
	QW6xM70A8VyET8LTgEJMm8nOeWVJsNONXoKJ0TuG0s1l37joG3jVd5ZRWxdHzyilKKc
	bQWEG/ShdmhQ5UoTWyXgBSHPD5VmIOSJbW1ZLVxo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649656978;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xucYWefdxAV+OAe6iu+wjXkxzMIMGq2f5kP23NzGqY0=;
	b=afMZ7vtIz/Hr7tyGRw7EFvtm2dhd4Kq5T+bj6qCGaAfgM3hBYE5NlHD0aiTuD4fx
	vOqn20GcYkiDfAPrCKPgR3yirnTmkVa5SiDVmgROnPtyZH9PSJYpoRsSGy5B417exvf
	Ji7B3OXodxtpg+J0+deMioX2GM9BKwGNLG/GEmiE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101801737db69-46db50be-8704-4ec1-ac4d-9dbf7abb09ff-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 569dbf02fd2e9e350039b5b15fc2da969a7ab73da209d94ffee4edffc5639b1e
Date: Mon, 11 Apr 2022 06:02:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.11-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649656978
