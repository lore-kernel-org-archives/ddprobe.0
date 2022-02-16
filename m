Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BDDD369D
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 21:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645047685;
	h=To:Subject:From:Message-Id:Date;
	bh=m+xznzj7xk2W0Lx43QFkJJ3YT/TrtVbz/bIn1L/DYYY=;
	b=bLLvuOwWixhhrsURfQjMRH7J7GebcyzG4Ti27jqNQkgrENO2JucAc721KNizcxgG
	rujwytnhW2j5rzG1MB0ENUhrYNVpodZwj7DcoImM/YrfLM3sdnq7a0ktSqV2u+U0bdp
	lOXWs6EOb8Di1ryYSb9Wpyu8ljRvB4RCF0Zj84XY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645047685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=m+xznzj7xk2W0Lx43QFkJJ3YT/TrtVbz/bIn1L/DYYY=;
	b=YD4nqCzST5fliZrWpKfXHWWwTSXBMp4S1Dzz4yiYi2Ud/tNo5dTpu2LZ8aOhYR0l
	yVQlaWphXvJoB+NgiGO0YcWDEgEs2OTb7wDOisTjNKuuVrJn6De+4KU62u+9LFPYarA
	CHLFUj7XrIIP4h+DDIMlGRHh7I46csyQ1ZgmEUrY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f047b9ef0-e4a1febf-e7aa-4359-b56e-51dc8f7e1679-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 39bba95b9e6b44dcc9dd9945576cc2f5a16be7f3155e5552f66274a2139f6a29
Date: Wed, 16 Feb 2022 21:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645047684
