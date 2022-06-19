Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E68397B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 00:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655599199;
	h=To:Subject:From:Message-Id:Date;
	bh=vdUnbT8c5rFfI9EYEezOQX7p5BOkEO//ujqbbVpzh64=;
	b=L5FbUIryN/bvuZC3ThGLF5uu/Gm30X+DMRblRNYpBq+msy469NAI8BaRv4to+qg+
	slFyv/i32kw2aHtfVceqaY2j+6lirpV7XPfqFd77CMCvqx1ZEI4YegFwHGQejmRQ1l/
	x1Qy3Z5AEuJxjLwPDkHW1SczHESc0g7QT2M7bUT4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655599199;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vdUnbT8c5rFfI9EYEezOQX7p5BOkEO//ujqbbVpzh64=;
	b=hh2glEcsfPhQvhPdBvTFu5N7uA2c7hQMYdAHRP+qxIxyNl5kA+DAh4EKMplzF4rg
	8EF8c97w/WEnXkeYG29ftT1fWNkl+S2FeySZMqZm/CLHzEoeR6cFLgOdeOxuo/AURZT
	vnbhvA/vsbyVvtVpu8A6iTlyB/mFKmvotUbowkd0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817966f405-cfed36b4-e59f-485b-86dc-4695142e3990-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fa9aa7d52e76f185a087768bd917a8843859e2c4e3b9227239f45449b93ca898
Date: Sun, 19 Jun 2022 00:39:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655599199
