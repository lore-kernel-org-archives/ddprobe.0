Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B50287E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 10:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646995585;
	h=To:Subject:From:Message-Id:Date;
	bh=ADSg4JDCXPMws1Ukk5ezH0gaiLXcoobCAJtMiTHZ73s=;
	b=VfgAna7eu0Sju4XTcyHB6X4Gb9bwQIu3q/gQGpewnUyXzufVq0oaHBi8C/IwwuyX
	DspDOXdBGF57/8OV6XEF379PIc4sIOrsV/K0wJR9jr80eWl+iFYqqR5MG9EELxbu5jc
	Kf+sEqvPYV09rxpGFxvYLttEbY59HiCQ50VKP4uw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646995585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ADSg4JDCXPMws1Ukk5ezH0gaiLXcoobCAJtMiTHZ73s=;
	b=bU/SkqKwqIDQXXGbXzhO4SuKvSexHzFH/V2LDOET60DOk7p+5GkW3pEXVhdVlGp7
	+QshhbYIMioxAd9g6nKNaRcvukwqIzrqLclUrAWcY9tHs/Zu+q3GHrF2NOWyXde8Cvf
	tC4Yt3hYb+5fz0sicgKK8005fK/Is/QgBK69pXZc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f789636fa-6cb41b2e-1293-4fb8-b95b-c00135aff9f7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f14cdb24387e89ca519c37aa8e1faac7a3b3fca14d4b67612a71a7d2435cdd99
Date: Fri, 11 Mar 2022 10:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646995584
