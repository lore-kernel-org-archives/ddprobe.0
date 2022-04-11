Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6492710E9
	for <ddprobe@lists.linux.dev>; Mon, 11 Apr 2022 03:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649649538;
	h=To:Subject:From:Message-Id:Date;
	bh=7fbjy3oR6N2N/at5dUv6AX0SzEc/U5Cd7AFu/RIGy48=;
	b=ZxF3cZuvB4XlDgPmxplvjZlZN7PiD2k604iEH1Qtp802ZH93acBDHFSnmBHSzXKG
	8sig1Dw8aUktyB9UZCMBbOujtq+5Unwm+xEFbRn49vc1CCRDcH0JsalZ6yCyYCMgMxI
	rr3HesTAJEy1S+LVEpENFh8kTnm2956MKVVAJ4IY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649649538;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7fbjy3oR6N2N/at5dUv6AX0SzEc/U5Cd7AFu/RIGy48=;
	b=k2aRMuvn/IfipYn7Dqhyi1j52yUeqKOvc6hrgdCA1hJ7o4dj6UxSZDua2G5MN6B0
	p0zuSNF5UO30kKoj8mzqVEeMEJ5pKN9531v8UJZZVht7zWdYsroKf4O41xZ2AN/y13a
	puvQ2BZHTPCgEXy1uitfXNMx4wB0oTZiK37FQxCU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018016c654e9-72283028-3437-4a6e-955c-c70568604967-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0414a99bbb2d647a6e314723ddc91310b68bb6a2bfc96a86995d4ce1e25b9a75
Date: Mon, 11 Apr 2022 03:58:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.11-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649649538
