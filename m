Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D859A3B
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 13:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651065718;
	h=To:Subject:From:Message-Id:Date;
	bh=yO7+tr0uxSw5ih9NTQSUC4svLQVhLj62XFAa3xQw7Co=;
	b=ZskPmN4GlEABolyUKKBahOXD/Rlxw4y++Vp6QSSky585cjasRXMJ6pbFbXZ20Nm7
	8lzZ6LhrnbZvTzuUw9ffi/L7Sv+YF9rXRsqzar0lCRVVP0mWMBKqUbxMJqkAqCMkrHi
	+wCqubwEyxRimtss2YriJfko6Yo/kAE9wmtYtZdc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651065718;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yO7+tr0uxSw5ih9NTQSUC4svLQVhLj62XFAa3xQw7Co=;
	b=QpWjBw4owJpp7szgn3l+RvXk+jjw0AYStwcDrDuINvfqzjiBzugDRuK1BGhnt9Vz
	aRyg+8s2FeCuVY+o2Mr9radOLFW5X8Te+B4/slOQg+T05RrWrWdCSnpnoJ449TWuZhl
	uflK0w+m2qKZt3EvtyJeIFSmEWs7VI8/wE+6Ip/s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806b2f8604-4cb9816b-b573-429d-a163-8af31e769a62-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c60ef39b6203607afb15f46b3bdd67591ac684f302ccd0795e806e56b82e507a
Date: Wed, 27 Apr 2022 13:21:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651065718
