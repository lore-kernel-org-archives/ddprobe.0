Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96E175580
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 17:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645290384;
	h=To:Subject:From:Message-Id:Date;
	bh=Lyrx+DCkduAwIOY+U5WEDyePJmuj7imiD6brzNKNTFs=;
	b=G+stqlLaal9egiNjrIXpO4HcCLmByXXq+SIOMsXcCTAE2yUg/doKmWPsPeuOG+PU
	upKiDqS1RCCzXJ+LkmEvKNGTkBsa806Iw4tRVayqFWGscDj3TJCasqwADVAr0o8GTGA
	mj30L/8eZZOh9rnM/073T0ccmCGQnRTYJ1RENBjw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645290384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Lyrx+DCkduAwIOY+U5WEDyePJmuj7imiD6brzNKNTFs=;
	b=Mc7vWD43zs/RYeX2xjAu0GzOEJHHrxnX7AAP6AwjOGGcmOeTPWHDxaOIV/ARfI9T
	V4UVqgt+fvO4EF4vR6e9aeJloTM7Qn/ROUR77+hV1K57waxHAgL0TLI/6bAS6y/MMSB
	9OET4aau4vTSHiH/f+5zxTUhb7APt4RMYTaTJ5yU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f12f2eda6-810ebd3c-8e9d-4e4d-98c5-cd485d173f43-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d7022ce0e0cbd1ca54e2e2533bb9a6ca533d69ba111c524e30a758807c6558db
Date: Sat, 19 Feb 2022 17:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645290384
