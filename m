Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 193AB7E
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 01:34:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650936898;
	h=To:Subject:From:Message-Id:Date;
	bh=Jc5e7C6Dyd2X3JCi4wKOHos6pPMxBNBxwj3k9UvTUOc=;
	b=EpH07MMbfsVjNQYWi9mZ3+fyKGrWmkl3joZ114nOMdgB75k4eftp0G2Z2osUWj8M
	JEHwpPcQEbrHiex/B9/+tRym6d66sl+0Btqlp0uJ+IZGUPS9wkjBCCvDIhfBJvQpMJ9
	DInvAdAfEMIvcGF8lMUeQTyXjRkHMuqmts19AkVQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650936898;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Jc5e7C6Dyd2X3JCi4wKOHos6pPMxBNBxwj3k9UvTUOc=;
	b=MO5wAtbT2Xgv9P/VJJIpR/mRELQlWFeDzzC8FulBMJ74mHLqC22w4ZUYhh3+pvQR
	DBAXdycG442Ebc+iWEVwlM/2Fm7nRToUwgrSMdEDN0diQh3l94Yk7P9wwh9z4z6Phnx
	tzrnVxt/FXeg5pLH3BpiSRWoH3YUFZV0UVo2l8Sk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806381e2f8-e85efca5-afd5-4b60-a11e-c4240d6af265-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: efe0bf70e82361d0cd033c9e08550459ced8fc534fbafa8936fd041e594b93b8
Date: Tue, 26 Apr 2022 01:34:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650936898
