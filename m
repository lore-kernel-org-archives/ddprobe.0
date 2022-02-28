Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B09F47C
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 22:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646087784;
	h=To:Subject:From:Message-Id:Date;
	bh=QzSKxG2wRLbq7Ohyuz9jgtBvMgEfoFsWA8gjRTD4zOI=;
	b=HjMYddrV2wq4RBlJvlK+5r5kEJzNIhG95fRrH34sGZmDS32WHEUO+kognBYLeva0
	RUDbBA0tC4YMFOMFC5MvYig7JJ5tABAXlcwXjb52XSIT7/hDGxTTuGgI7SPZDZr9Rel
	oD0NpxPwBw/UVOQA7IsUuhWXEIvjGPMNIjFWzTrI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646087784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QzSKxG2wRLbq7Ohyuz9jgtBvMgEfoFsWA8gjRTD4zOI=;
	b=UvjbxMmc9QXKkNW6lBjBLGec0rLYREZruMhab6UroCL+B6iphW1x0GtQy9GY5eCo
	PruHtI25CFt2STjss9kvjqp2coz4OiMrS/JZvyNOJNG2FonxEn634ZdU5FOZ3sbKVS6
	Qf4OW3KkPQV1de1fk49CrIRyespQuj6r6ED5WGMM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f427a491c-2a7d1d29-4ae6-4971-9b5c-3a693419dc9c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1cf6624972f292a3deebfa1b66bad83d95528f3124c97c341766f0aa1611ce9e
Date: Mon, 28 Feb 2022 22:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646087784
