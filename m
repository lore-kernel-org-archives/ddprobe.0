Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9495C320F
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 07:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646031985;
	h=To:Subject:From:Message-Id:Date;
	bh=I3PplIh/OLXl3K7oB9/4dppdirhZzz3sGpvvt5CJtrc=;
	b=EvL6PIhAfx1Rn7A33tVqTMW3seE76G0WW5b/7hV+yL6nR9LxoLcVqyWMt93WYR75
	2+RN0sKZ1UYLODA1KZDU9uC6XYyDgLLtCw0UJev8zJG2oHieXVrS+bebeLgPQsW1YKI
	yC+ZcxT3kJaltV0kSIaJd3s3fuxNXr35eV4qdNFs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646031985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=I3PplIh/OLXl3K7oB9/4dppdirhZzz3sGpvvt5CJtrc=;
	b=NM9N6u90rAkzb/fH5NlJ8tPj357AgfffwSYTGQIxXaUUlj+tAGzo6DnaGrV9kBKr
	K9wY6DPRUNQx3cIOqCi+2cPLQo87dmCUeEwCouOTjchu+rCnretKwqr0TDsn7sJmG/n
	9SaPhlymPm/1DeqAjSC0zeI//C7V8LEpBdu3+2Yk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3f26d84d-e08276a8-6b2d-46c9-b19f-ceb59630c6a7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ac05e8b558e148974c92165a237a58ca6cb65da8516cd79ccd7cadc4dd946d22
Date: Mon, 28 Feb 2022 07:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646031984
