Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D47C523C2
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 08:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652172059;
	h=To:Subject:From:Message-Id:Date;
	bh=VKGOxTAcK/1trlux3NoJTbgU9BW85EfOeTshkjIKwr8=;
	b=XhWfXm4DM6k+wFukfKir0rThq1mg5ULfS2LOb9Tts5Ku3qR84aAotYIWPlj8ZDMi
	8KvpPhJj4H5Ma1Pjg0lE520lJUv6XPKhW7SmSFmLcWccpbAHDYb+IryVyPRHA58bOTW
	FLDEmQI4HoRqWbwDmE24/Rn0l6YJvO1zyq1J0UJE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652172059;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VKGOxTAcK/1trlux3NoJTbgU9BW85EfOeTshkjIKwr8=;
	b=YPqyu5+y01RHNU6CjCTgRJhYnxywaOlTfNnHR5YyfIrOHR/miOU9XnX/g6DFyiZa
	ALS6TZ9PfduXTbb2xBtg8fWBwwhtJW81ucFQm6BMrmuaL4fX8Qz7O8l5+qgMOaRiGf3
	Pf8LKl2B5rxsEVN/icUvfMV2hkeSGANXBzpkgSqg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ad20f265-f89d8fc3-2831-41c9-8231-3bacc1f06b8f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1651476e21cbbfd0f77c74511603a40485de8e87f2d188a27053975271b39a6d
Date: Tue, 10 May 2022 08:40:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652172059
