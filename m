Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 585D17E
	for <ddprobe@lists.linux.dev>; Thu,  3 Mar 2022 15:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646322384;
	h=To:Subject:From:Message-Id:Date;
	bh=r+5eg1NrrSQSMvpXa/7SYh+bet1q78S5W5+KZEFtZHg=;
	b=IXYcbl+QtYSuwABegfNODgAwNmvZtWGSkInVY2virnFopZj55vz2YFhK3ughwWhJ
	WuH0KLGL9XUzVS78lyVyS6o8It8rm+aQkGfhhMDM+zGskGxCMPXkhLsLkqOUfA/9hmY
	nos+0GkXT6Yp0Vmg4ig56QU1xH5pdb5iiOwL6je8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646322384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=r+5eg1NrrSQSMvpXa/7SYh+bet1q78S5W5+KZEFtZHg=;
	b=iZLIdWlFZy7wl/93Y/0pFj6oNpNGyNWeq0nb2xshMl2s0z+1l4KlVJNhyvVQV+rf
	0C1WZ1keZdz6LEijO1TKDQLSF7eAZvkIvbjVbzjXftnbiR/X34V0lH2jNOocJhQMKpj
	xa+cYcsaX2y3oH/8vvVTd5gtSUeGZxHvr7XRkncg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5075ff80-63d85d22-c616-44ba-9c25-f3440f99f50d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a68a19e3f4792a3cfa75be33a89a44941ad5e9dd6e3dcd0423893f5c2c788bf9
Date: Thu, 3 Mar 2022 15:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.03-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646322384
