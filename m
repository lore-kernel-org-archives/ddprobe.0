Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E810EC75
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 13:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647956185;
	h=To:Subject:From:Message-Id:Date;
	bh=N6Qyf0UEltblKCHJejPoA79vEEx4j5z2AR8/HoHzKfE=;
	b=BOI/bRlHCw5pvvk+fBtSsnpXYB7+kE+Y8duE5WcHZQ8uBi5yi0KM57xWYRae8owr
	Cr7rfauS/9Wr13KbVRXLH1jqe2HQRa06oHplK7D1rZ9KbBEoCnRg3v5AMKFooQT3BUX
	oRkPA0jUPvdvg8EGF3ClC93JYYYbWgHIjPZGJ5j4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647956185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=N6Qyf0UEltblKCHJejPoA79vEEx4j5z2AR8/HoHzKfE=;
	b=dfcG1eu8QFUJNZpO8supXJ4cy1ifFS3KDFjt1T7z4Pwtc8LNz60b5uwN+hiZqoip
	iFNoOPTicZS2C8S2b+lBEVQAtHFfdF8MHwVApftslaa4/6vQ1FJnHL9AsMAjB+O4LoH
	8d2YizTU8NXlA4rlkXsPvqcnNGw1Kez/KqB6w2W4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb1d7cf0f-d4a5b178-043d-465a-824c-c5e9200ea896-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7cc254ed28411407534dd1d4a6a830f7036fb403fcc1c8b8ad4c2c0ce1713a9c
Date: Tue, 22 Mar 2022 13:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647956184
