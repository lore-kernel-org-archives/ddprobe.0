Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F0AA7C
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 23:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646608284;
	h=To:Subject:From:Message-Id:Date;
	bh=UQnTi3tiJq8Z++5f95IP7dYh62rav6jQdnG9u45usAY=;
	b=avfoUbbhkdj0NGdE6kxG6guJ0VYy0C0RBTEz2C+OPzsIpl0eZlTw2QYVGxPVcsD9
	umMN+/C4IxF4/2wHO8w/VZo0YsIGY1xr+vuayVtH8cpRdkvxz040EVfJ9n8Xuv9R4eB
	CMetBK25PliSFL23Ll7fRabOuWI/k3lNvh7I8Oqc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646608284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UQnTi3tiJq8Z++5f95IP7dYh62rav6jQdnG9u45usAY=;
	b=HwkyTBI2PRqeP1MA2of3B9WfrAnnQk1XMj8VQzl233i96zB00DxJKv+LJQD7JeiU
	qK4Qp6gVpIHMboQ4EVN6LIdJDLJuR/Gcbz5aJNOAnEba4sNVi7L1tMJNQ8T9haZmJ1p
	544hspwbEQAgB4SyMYGw/sMag2o7Meali32W2QMM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f61807c70-16a32d6e-af00-4984-9644-8d3dddf1b5de-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cc4e61868a6d398fe6da54c6983bcbd75cf33744f487a40290f0d12a846e3024
Date: Sun, 6 Mar 2022 23:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646608284
