Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 077BEECF
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 13:07:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655816819;
	h=To:Subject:From:Message-Id:Date;
	bh=DDblD5C3DjU+DHA4mgQyJmLuRQiKfH1Djcgx4YepdBk=;
	b=i4OviXSvdq89qUkxWt736o/lcX/nBhWFrStzeS63+Nm7xzOmd/IMs26wOFNJkLov
	qTJCzdSSgJNuNn8UZjjNHXys9D99W9szZTuCxn8tHK4OxJcgu0+lhv+dklO4Qh2/lG6
	BGgAJHd9Bp9PmkzrIHl6dyFz3Un9xg2ZcuvE8HZY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655816819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DDblD5C3DjU+DHA4mgQyJmLuRQiKfH1Djcgx4YepdBk=;
	b=Q0J4mA5pkJPin1V+K6bPKHdtNyfznOamCyWzCeYOg/iH4kcg6KvlUZObNlaRvRw8
	o8DYwO5ZWJm9AIFbWgdrE6Znt3esm2rosm4JxZNgAflubQjH7kqO5EFWLfdY6MtgYHp
	OTAI3SXBeHGckE63sJrwzU/Q03q7CSR7QqHe6QVA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181865f9226-c2dd9d2d-40ba-4c87-b6c1-a2e462d822aa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eefcb8e9ccdb6cb627cfa69c8e890ca16a6220870ac349e7f5c2932ff3760b85
Date: Tue, 21 Jun 2022 13:06:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655816819
