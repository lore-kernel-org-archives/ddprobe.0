Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63C485127
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 21:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646861484;
	h=To:Subject:From:Message-Id:Date;
	bh=Rl0m7nhYZO7eM4p3V4MiUHDKdtIXYewjEhPIGuobwrQ=;
	b=kLnPAP3D7x5WdD+qSd5UIbW2o0wQoFQXseUOAEbwUUovCygr0uOot8xTDQZZNfeh
	wmaoaGA0ugHqYTIA2ezXBxjEIPiHjH4HLZfZzLVr1Zf8KjJ3FEMMJi9Y4vErnDOoChb
	8kbpnzhTOWoyZQDMpHAZ4zCX6bz/p2Gcmd47qWxg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646861484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Rl0m7nhYZO7eM4p3V4MiUHDKdtIXYewjEhPIGuobwrQ=;
	b=FCa5SABl0LCTcKjp9yE2y3tegFnXRppnlpxBkZtZYZFYF3akl3Y6yhIztDPwBl97
	dibhySDfV5X2jKpE50pypw9VuP1GZ977Dp+TOBy1SI24NDjQPgRQIb3ijFiIE0neWdl
	nn1dkTEMBzII16Ppzf/FVX9UghOFLHet1QQMG0sM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f709802eb-2698c810-b78b-4a58-9468-42857bb94b4f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 890286c407d30369c199dc008326b6030ee4a4a2e71efa15b50f84bba83bc999
Date: Wed, 9 Mar 2022 21:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646861484
