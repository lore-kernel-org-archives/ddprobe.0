Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A71883C29
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 19:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660764053;
	h=To:Subject:From:Message-Id:Date;
	bh=JGCzOCL9rf+KgIy3jbd/S9Q3FIjF7EJM7D84VNAqLQE=;
	b=eg3ECtnoGH8hss26bsiRLe75uKpjs7os6muTURemfWhRcs1aMK594OfcczJpimi8
	eC2hkbBcZv1QwdgD5BnECO88F8z3tNnMJJ8uKfnbiki89OG/6KlQF2Sz1X8afN2p+Z1
	OIM3PDsZ0vs4WM/SdF2LPy0/QJy2eQovIMp1INsM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660764053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JGCzOCL9rf+KgIy3jbd/S9Q3FIjF7EJM7D84VNAqLQE=;
	b=gF/mqkaF8FRaqDrSUxveEmNTm/tmOtPFJg8qOpVfRdTvCrnzfbItoHhZsXoVbhyW
	zVoXZXQImPvfb12F7OiGqIx3tpxdTY0tUWP28ValM2GUg+y7dIJzL6NhcEZ8RfLL0g8
	zpmQGlK/ii5BqKvKznsKMrd2ZzOZAs1WUvlsIybw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ad405d69-b3f731e2-f575-4726-97ab-972550f4f8b5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5a5fc9812ac8b17242d34d7af977951184cd22ac936672eca48da27aee05aa46
Date: Wed, 17 Aug 2022 19:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660764052
