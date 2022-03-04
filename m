Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3E347E
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 01:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646357485;
	h=To:Subject:From:Message-Id:Date;
	bh=dupd2JC8ijGGnNqzHpapaXX7OIKKQleKI/E4OAd8l8o=;
	b=gHCONwiwqhpGBw+WeRZre7UgriQt/c0XhpHBHAHUvfl+uYIu9FVTiC52Ew/zXpRa
	tOxQD9DgtrOiAAzbv/5+BCePcvQQ+oACAREZ60xmcmnJ2pE/QTDU6krFBVs+7hQIntg
	mVLSjYhvWmrO3n/EwMrV5HthFTOeDb34IVPdoKj0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646357485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dupd2JC8ijGGnNqzHpapaXX7OIKKQleKI/E4OAd8l8o=;
	b=LquK+YzYFE0QkXebEBdMDIWOOXmvSRVRl5QB4WD49hUj8Rd0LvBWA0GSFTKrfF47
	3O1EEAbZA5FiRHsmYuECipoBi7tltBlHbQvqzuBTw6ndQiBmPUMc4fslBd3vq/qJFGv
	m6VG9XlHXd43tWnAweWBZQjk/lgaghMN3guMUaEI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f528d9502-395dfc25-5cdf-44de-b61c-d78d9bbab130-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8a8b983b403653d7f2992d684cfb52ea262cc226b899ac18f3bcd7739aa66f5c
Date: Fri, 4 Mar 2022 01:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646357484
