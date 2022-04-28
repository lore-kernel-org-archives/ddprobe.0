Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35DDD136A
	for <ddprobe@lists.linux.dev>; Thu, 28 Apr 2022 19:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651173358;
	h=To:Subject:From:Message-Id:Date;
	bh=DyAPK8s0Aag1bu8cFE4o2uAA+BkOXFOBkiy6F86UlA4=;
	b=PEzJEZlRGws6dtT+wSa5xPKy5nLopgKrWNkhmJ+CWdTMZYjRYeEuqDT7kwv1KXan
	YL5B4Nrqk5QsKnPiAmIfsyGL3IHsUN2habzjm0htYo3EgkZPRZWuQSDrQapJhDeaIut
	CKIclYa5DEywgekld2TvzHHngKcg2SlS1W9huSS8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651173358;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DyAPK8s0Aag1bu8cFE4o2uAA+BkOXFOBkiy6F86UlA4=;
	b=KYxtQeS6lcDEModwiSJ+sLQzy0x2qfZ9J3W97/b6Uph85Yx2KX3fuozbdo/h+y+c
	JZRriLA/Phc0aJaBMkcAVOuZ7ksN2i/d/VwYY9m9zqrKx9xonjJi6411tSpIl9yilJs
	r59UipNDu+EUW5IgjKxvBDlSdwKUYSAJ9cCnUBUo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101807199fab8-bc1e1a12-95ca-4eb2-9ee0-2428c887d189-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7c78094d58c8c34b947c2b96b6dce742a582e8373997d1ad6f94fcdcbdcdacd7
Date: Thu, 28 Apr 2022 19:15:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.28-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651173358
