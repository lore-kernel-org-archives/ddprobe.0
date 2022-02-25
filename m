Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D61028FB
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 19:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645815984;
	h=To:Subject:From:Message-Id:Date;
	bh=2Zu80ATcPbOpVJOuE0Yz9BEnO1oOvIjqxL6RCKXbwJU=;
	b=BGACh4jda8mecczAYkQ7grkTqBUCgocC51757C40WuVZVMIHDuznIYZ0kz4p01Qi
	dAOE23x20tg05x7rzYB+y6KnfGFrsAsBC7vp5usIPal2W5aBkfd+3Ct9H/0JcWHMrjC
	JXVTX1jnsRdCbg05yhEfPpLfJm/2vbEiS2bjZ2s8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645815984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2Zu80ATcPbOpVJOuE0Yz9BEnO1oOvIjqxL6RCKXbwJU=;
	b=DMw9fszEKVaE6Dyt3qFRs+Rmtdg9PNNDvsqOzccBOCeT4nIgW/HDs6xM5fC2Xn5r
	l1cLdsgVOeblwV/+NM9CC8ANFPogOS1iPn1iTq8UgtRPVGqPHqfX6tStbuOyPljMBNc
	F+2DKrtj4BOG0c/rNHGFFCYJ962c9Q0ve730lYeE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3246f26b-d67355f9-48c1-4c72-a884-c5c7f4bc7e34-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 47d053f6a1d7eaaadfbb73fbbe3f8255360499adab7ec42137e60862fcbfcc17
Date: Fri, 25 Feb 2022 19:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645815984
