Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB2F61B72
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 16:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648051885;
	h=To:Subject:From:Message-Id:Date;
	bh=rKQcPKtuiDOuDK1hMUxrMjv6i4TaccGBNDWv6afgsKA=;
	b=mYyj9FW8vc75Ah3LoQ07xtUf86zEB0WlYBaz6o7kASlDKyhRqH4xTi3FAxoLKmTo
	x8ZZU9zCR6uIsUD4gZdUdvW4IRIY7RgX8Ej8fYBWWK0mL5RL9Sdvhh+Ulc26rG1Lz4b
	ooHKhov7rPQQfEIViJdbF6NNERmOHV0pdXleut6o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648051885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rKQcPKtuiDOuDK1hMUxrMjv6i4TaccGBNDWv6afgsKA=;
	b=ES1NmtYURa3yW9xmj1zmfFapcVsXNT59MCiJD0yyNg33o/XwUC3XF8fwzbpNGb7e
	F9KFpOwxWhYknAMmxkb4MjdTm+60fPuu47A+sQvaGOBKRE8w9UmID9Bb2gO7kObs9qT
	BXo3T6DMWQKMsLnePsDRf8Oywy1juoNnj+JLXXWU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb78c12fa-c3ad9f14-f2e2-4544-b8ef-76559c0cd6b3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8a715f2c23b29c8c19e2174434b353ec0b18c96f44a59187220331c3f490520a
Date: Wed, 23 Mar 2022 16:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648051884
