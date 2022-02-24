Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCACF185D
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 12:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645704984;
	h=To:Subject:From:Message-Id:Date;
	bh=+/njxyhygDxMXO5b1D+hIgnzhDrsXuS8CHgHyoh2/tk=;
	b=W5vBozH+XHdwj8EG5Za7MaAO86E6Qrid0ZZuOR7gbLVybdChLLUzGvOhlADO1aG/
	4Bxteamd5pjgqJiH6YPgYHfA0USGXZDH6dhdRoR4WoGr5XRdwHz8wf+N59Xtx30H5Yc
	FbkWjfmXbD/hG+9Z11KiQK0i9Xft/g6GtJANp+yI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645704984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+/njxyhygDxMXO5b1D+hIgnzhDrsXuS8CHgHyoh2/tk=;
	b=IdBedg2Q3JsdlYE6GLBNpGyhbjmpGR9yIALDMXOPx7HQJ4CDZiS/IEYtIKXkg5G2
	ekKUcXNs2k/zr4oeG36OHwfPcBUtNOhL7Lk4/faZd62bVIYI7+5/5Pu8VlQjwcjqbHo
	Z4HWPvJZASiHe2LJ/Dj+EccbgAkaC/Sk1+HtPmvo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2ba938a7-79c5fb8c-4b0e-416e-a2f1-6f009b6a3d61-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 538c624275179c8824b6c672bb04b76e86a723e996bdf8dca2e355e7242821fe
Date: Thu, 24 Feb 2022 12:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645704984
