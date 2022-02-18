Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 528792919
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 10:01:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645178485;
	h=To:Subject:From:Message-Id:Date;
	bh=aTrnFribuJdoUejOfK6tmSChBS/tjSMuNcRIbPO7kiA=;
	b=KhvsQSREaKUPMVP4AVmjdp4eJ/KTGHkwqSxB2sR0rPopHqZqCot44hkQpLeqWW/m
	FJGHAH1+DnVa7mJVfxFcxG2bEm6JZ5Y7xioAgJ2/AsPd3j/bubBCoI0TEohZQXagDlM
	tbQBij6g9OIn7eQBvyrNfHg9SZ0Ig2j+W6wo/wxw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645178485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aTrnFribuJdoUejOfK6tmSChBS/tjSMuNcRIbPO7kiA=;
	b=bb2IbjicV0GiRd6Z4rQxu+/DGmK7twVqKhfQG8PDgosqSZ0Q+c2V5gIukp+5op8E
	tVSmkglcF4Z7SNZ2AN+SATm+zXJuJ9J1lRX+0YSRy6Pbm/pbLUNDCIqFue5M0PIS/Bd
	NUQpNZ4+OjXieWTer7dyEEc+K6Pmh9kryZUVnCf8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0c4778b2-33039f01-d2bf-4dab-ac46-9812ecb17b6c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2819637b0306f7b3dac8aac56f3a003ad1d2d68058ab2359b0326066fd8c1196
Date: Fri, 18 Feb 2022 10:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645178484
