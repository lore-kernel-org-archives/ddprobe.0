Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F08AF7A
	for <ddprobe@lists.linux.dev>; Sun, 13 Feb 2022 17:50:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644774648;
	h=To:Subject:From:Message-Id:Date;
	bh=wC31CB9HiDN+GeatCgrJOzQtfJpkbbpi5uV2J/YifKk=;
	b=EIQDAhwuX26Dia/GoQ6ev2ew9p2UPtcWJ4y+V32rOBZi/muJcGcbzWW9YINvZEO+
	Fewm8iY6JSziVVVF0NYYhKBHDe+4v25KD7TqSMO+mnWM9XdMAoLLpVtBQzgbmb27DAc
	0Jp2JLaef+0Z0tJat1T4SEGAKQaHR92hzWH3CrOY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644774648;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wC31CB9HiDN+GeatCgrJOzQtfJpkbbpi5uV2J/YifKk=;
	b=fhZo5rNc0Pp9tzLkgUgpBmdvSb9xp8XIkYITMsDoi7kw3KzYWlOnkac3lPCyDntd
	jzYUOByqtLpJjHotxpqprGQmj70GosnW2NiTQN1/HcaJnGIsTonEDm6hiTUKaDGCYwI
	pVWw7/nb2DiA1RCxhM6+ICboHkyGWwsXXyHfSCAQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef43569ba-2af7ecb0-d074-4ad3-ae5b-31868cfb01da-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8439104b4459991b1daba18c3a608a5832f19d3e092f21a68cec44deabfef959
Date: Sun, 13 Feb 2022 17:50:48 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.13-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644774648
