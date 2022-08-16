Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8403653B0
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 17:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660670452;
	h=To:Subject:From:Message-Id:Date;
	bh=AeXrJPWI/OhCbIwn8s/OhXfLBtgskhjLisu1fKmdS8Q=;
	b=a7guUtr4f5N0hd9SVt23QWuWmNqaEuOsmt6s7lIj5x3gDqeFviqDkxKaF6lYMoEj
	nvu+pP1m618TZZ9UzV1IhUlafn3i+w4DvLJned96pFBF2XIhlMZwRSs/i9PpEWQ9Rc1
	5YM9IDzmYiwNu8E9SYSFOVhVwSdsEgVEZuFmAR2U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660670452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AeXrJPWI/OhCbIwn8s/OhXfLBtgskhjLisu1fKmdS8Q=;
	b=Fdr8wQiSss7SMcRzZO3VtJ1GiUE6jU8PgrogEYpDSS+g3TnETPC/iE8puDqfvjht
	clx9M5tAH0MA++9L0EWOM9S+cShCQWFpeixIqExG2C4rKAd1K+fX+yosE5KXhZ90GBX
	QhGEMuL5UmZtaEfWhphvg0y4bHIIrzVU5YmJlHX8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a7ac241a-2bb84837-9dcf-4f82-a51d-1da6ccf3b2b4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 81983743f3cc8f84a0ed2ae12f05df0171a8243fa8fe7b0b7822cfe4fab65fa4
Date: Tue, 16 Aug 2022 17:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660670452
