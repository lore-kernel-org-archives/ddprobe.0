Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB246ECA
	for <ddprobe@lists.linux.dev>; Tue, 19 Apr 2022 10:14:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650363298;
	h=To:Subject:From:Message-Id:Date;
	bh=Vc51JiwYut0npzm2hmKx/mLHe+Oh1HFspwfJwTZIXN4=;
	b=YhSrGOqnUFWOqtBRoD+iohaNhUbkEhTDpIjWm6kl8usEr4yM+Xwx0Fv5XoUCU23R
	wP229qDpVowOjMxyEuP5zinV8zGsYup3FOD9eL2xFbFti6GYfBgIyFX25BHuwqlT77D
	bTLU+An+K+23d53tOvN+MguH/1Z1iaPZtyGyvN2A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650363298;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Vc51JiwYut0npzm2hmKx/mLHe+Oh1HFspwfJwTZIXN4=;
	b=PqD2jIFXch6WjZEsMhyKrsCm258RRUxadKIiPMhcb9592MZ+ci5xtT6UaY3AIPaN
	Jo9cbNbJPSK2f/oPzyXZx4k1D4SnozzinwUJ5E16uyzpWpdLHIKHPegfPG+ACNwJbgS
	OKaSJwn0CPeQ5elg91xxJJSq6tQvh1vZRHH0MTA8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180415171d7-745c6952-0093-4ce0-bef7-0d0825bcbcf0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9953f7409d0e3f81c794a0ba703a06091d5be5fbdfcd9cf9ca53e0d9c9331ee4
Date: Tue, 19 Apr 2022 10:14:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.19-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650363298
