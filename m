Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 157544697
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 14:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652885099;
	h=To:Subject:From:Message-Id:Date;
	bh=xtWWSdBwzR581ggkGpkLLxmkKaqKAfR3094T3/gj5wk=;
	b=iYFrGKF3+hnOzY93lcXbnH2/rVvfovNonk350TuDBlkeAbpSgKdI1efVt1+DEpBu
	GRqhhtpiXR1+rJIFWQeMq8haSff9FMUGPsdzvaxxpBd6Jj4pPTwsoknYPIQwSz+8PfN
	AoTje8hFQEmW2B2UyOmBNUz3qzJu2CfmIo8JWnAQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652885099;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xtWWSdBwzR581ggkGpkLLxmkKaqKAfR3094T3/gj5wk=;
	b=BR7zFDEdfEiBGm/kkZDO+2ykdxNZo8uE+gWzg5Uc7K6KDsUbZwwTRLe+V+BNWGcF
	YfuQgj1Fl9EkLMk1M/tHnK67Aqz4Vse47aPwgx+cLQoDC9IbrxG4/vxSRbAFG/Wn9jD
	Vb+DJwl64Oy4c/qGsZtBsI93wD27yLkjbOHp3d6E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d7a11369-5cd1360a-70ab-48d6-9f02-5b418677d12d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 20500016c05ac0e07d78f4d2d006b2862ab2697200aa8ff62ecf539c92b407cb
Date: Wed, 18 May 2022 14:44:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652885099
