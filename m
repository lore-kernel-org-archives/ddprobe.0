Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B49733D1
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 11:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647862884;
	h=To:Subject:From:Message-Id:Date;
	bh=+msp+3w4RnyWemcCTzdGuI3OgXr1JE8QH5VC6D4K310=;
	b=LedYiXfcQ5cUGccWxOVeyExAqo/Q8p8WMnjposec/i6heiIScNbaEdEXYumd2RaT
	X7ln6vyiFv/UTYzLtuOHghJIB5f/6mMZR1XXQeh1GYjPLvk64CKAZ3aQATFAWeg6Y4w
	xXS7s/8rDfa2+A7AzOHRs+NJv3tov0FmAHM65cT0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647862884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+msp+3w4RnyWemcCTzdGuI3OgXr1JE8QH5VC6D4K310=;
	b=JDZ9WU7NkcXwDiw0qpPy0Jvbv+iLuXPtTKZot9U9aOVw6uQ+dc1/sNat7wbLnWtB
	8/kLpqf5fcB+IredCn2sCJYlUkG4FKJx4gHSeUC/BlXEY1xUBqsLlZN3MaKyPm0YfIx
	2HKKpVBQWrred+xDxrNUnbFgb9rhT/KlZp39qryQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fac4829a7-b0d1e902-a569-42bb-82cd-37eae91844f7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 65ec35b4fb13ed282368aa6b713933e222644e88bd08570d7cdbe303f6012400
Date: Mon, 21 Mar 2022 11:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647862884
