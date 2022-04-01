Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D9BCED5
	for <ddprobe@lists.linux.dev>; Fri,  1 Apr 2022 09:42:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648806178;
	h=To:Subject:From:Message-Id:Date;
	bh=VC1xYppBh9Kb0pNdWXuiy+Bnaz/rjoPpE+xrr2+fBVM=;
	b=Pe5fmYC98foRgpzW5leDXL4mN+7YCJOD9zaeInc/O01YbKq0+d1mhKTMqn0g0zcb
	m9wiJB6ai2MvcGccJlFfYwbaJn/uVg8hHsBWz+590Qjcdse9M3zbmjWYf2aw60UOc/S
	0FJy4K2dT5BA35E0JBWvq2cBr5FNbXHUzl3pTPac=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648806178;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VC1xYppBh9Kb0pNdWXuiy+Bnaz/rjoPpE+xrr2+fBVM=;
	b=Qhrz7ouYtt11IJVCRovvfRgwhANCWDNe2m+2N9ICAHcTQ/llesQG6OxJuFClPn3X
	rEiQh9isuTbLkIOOHeK297o8PR3+hZuIQaupGObn2QFSNM3MEowEVAAkyarbDI+ulbn
	xuWLCRyU911eS2woSRZdouojRQWNzN9Bn+95R+IE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe481adf1-fbce0579-63ab-413e-9f0d-3ab5088a874f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5d4fdab3cf0950d9faa2cf62af4469976751556e10c6caab1caa6cba14218740
Date: Fri, 1 Apr 2022 09:42:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.01-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648806178
