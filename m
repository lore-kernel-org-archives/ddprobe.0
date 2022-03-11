Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A45B7E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 02:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646966784;
	h=To:Subject:From:Message-Id:Date;
	bh=4cPAriqA1QQ+msmv2D9bykxooRJZYV1i5CwgF2b3Ebc=;
	b=E0gQWIZGlWb3B1HEge9lgLB2LmG94AyqNFkmPMMbLdryYOZFqz7sCOZPHJ4vTbDc
	HQlj4b3NVwwtm584nE+UVZPhR69JyXDmszH4UX0GrFcrfdGrCMmsXExEmAWuHSm27R3
	3CyfhDcEIIkm8hnRL2A6D/W5v447Imv9DooDMet0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646966784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4cPAriqA1QQ+msmv2D9bykxooRJZYV1i5CwgF2b3Ebc=;
	b=R/ZanE8z8cmmDloxI7oMI1582FlNL7g6adihlbsJUgwJQn3gqVnVCh+xZjldDWun
	8w55CS3VIdpaXBJRE9nSaRJT13VNw1KJ/cU1tM4rlJItLt8zPJ5kCcC+K2pmKKuV2Rs
	6pKILyzjOsMhVp3DTYK2E7K+Qx1LibEr0m3iRIuw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f76dec317-5df1b595-0e31-4035-b0f6-f1ad6662506c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 914fa707f98a91e6333e72f8d93920aef3252b6b212a6382de0d4000160c85fc
Date: Fri, 11 Mar 2022 02:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646966784
