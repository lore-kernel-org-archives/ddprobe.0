Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A451E7B
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 18:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645552884;
	h=To:Subject:From:Message-Id:Date;
	bh=p9GulOl/g6FpNYX6PbQsMiTVkr918UQuq9cRKNRSbtk=;
	b=A9sTmuAMW0AFw/Eoy+hH+dvSEU96PGLQiOB5xol+K9khQzi0yush+ZkWwZwVf3PH
	Q35bFfAG6lOL0sEjJ1TQYUG01OMtCEfaeIJ8pR5Ny1dyl7NQzVYRkw25KFwzuPCylCO
	yhARlc2vawZ4Dq+Rl4pPkStOAivccRpl6Umkn66I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645552884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=p9GulOl/g6FpNYX6PbQsMiTVkr918UQuq9cRKNRSbtk=;
	b=d9L0cXyZ+iyHEs80vYgDBSE/1jRCoLpPaA3RV8m+BzbWCYi7gm7QQfWt1PRWPTty
	mOpEGemVKHj2T/ujWnKTp8vm5mCQKunHrgwUUuj7xILMJriBW3OyLXjB1+vsvX4OPsK
	ofdF988uNke4pc/EQsnNsMJ77memEwO89HRqOdAY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f22985c3e-7768cb2c-7e94-4a4f-bd08-b254cb9a61e1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 242d20af6194bcf861c7792728fcfa6baf8eb69a428117017ebb8c088029e465
Date: Tue, 22 Feb 2022 18:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645552884
