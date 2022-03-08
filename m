Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EAA27C
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 10:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646736984;
	h=To:Subject:From:Message-Id:Date;
	bh=6ab5rcPQT7BbtrKWT3Df5ZUyJSGdJMnfIltq00lpJxw=;
	b=Xf0TL4xp48nN4BJb/LWIsiGozVVPeY0fYsxye8eoBSKp5SFTyKOk/rcxrpWaDnGL
	+ALfMLd07jY/tCIl0JSyEk3IUR3/i0oEVMTDPJcXcQOjqcAjvat9gEN/vOkR+c/HZEU
	mKVz50eAfkTlm33pjVp1DWP8V0aCnXaEfy0KF0TY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646736984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6ab5rcPQT7BbtrKWT3Df5ZUyJSGdJMnfIltq00lpJxw=;
	b=IWdNh0rs1mT8dB4In7020ADSnPYFTOgaXW917yxYEBivKCSWjIpJW7NHqKeO4Umj
	z9Sgy0w91INcscjmJyIQ46p9H2aoiERSnFmB30YFlI2cJab3f8n6II4L2Ee8sHiH3Tl
	1DZ/l4bSAJ2xh7Q3ScfjsoxeF2QpPa1aE3Yt1LRc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f692c4aac-dd36d0e9-5208-41f6-9549-4aeb9e126b6e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0f097771b0ea73adabf3a3eb328e63eba32cd795abdc0462f4679efd339f0138
Date: Tue, 8 Mar 2022 10:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646736984
