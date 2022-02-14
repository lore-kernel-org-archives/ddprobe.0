Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E9C67E4
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 05:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644817858;
	h=To:Subject:From:Message-Id:Date;
	bh=Hb7U57Sd3NG9nhGLOiPrLgmVoHcxfwa5EKqeGcnKDvo=;
	b=dezWjtJysb+bD2i9c0KTe48r3WY+Xkq4rQakFQu0QH3ICix1TRUKsmNTjpWlaGPV
	rNqrTnTRBWckXpB+01OW/6dSPfnZiyVXKqnnJVCwIMWTtuqMlcHlwkma6yQkf6xL4bq
	yGaeOKnO+ex/V3klbB51RoQzGki9hpeDKQVU+J7k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644817858;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Hb7U57Sd3NG9nhGLOiPrLgmVoHcxfwa5EKqeGcnKDvo=;
	b=E9UTo8G7bB6SI+UdYiWPf497Zu9mwTMAaGsWbElFNdNzudujijEPT2fC6/Fju8WO
	GCCu8lh18FOCsomrfSMtgE4gfXXtylCR2wfTV8p6SIIjLgNXhLv/y2CY8zz6ACEoF9E
	oSz9EVppGlrZv6ehu0XpFyRMob1nI07ZegxB02wk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef6c8b590-9050ffe5-1446-497c-9bd9-ec3423f31b65-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 993c0c0eb8fe15c1c94b6d4aebc5b27343bfdd617bd1677126bea96f966f525e
Date: Mon, 14 Feb 2022 05:50:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644817855
