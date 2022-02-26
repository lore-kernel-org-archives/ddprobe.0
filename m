Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5F5F7A
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 23:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645919484;
	h=To:Subject:From:Message-Id:Date;
	bh=ngqj+OdZl4N1sTdPsyOdfnzKMW8JD8g14UEfRvl/oUg=;
	b=MTkvTxwhnLzZmrmxIRouEwnwBanc2O+viYwM+fm1RHzqugMCen+GFQARmqVP68HD
	LvwAfuSNddQCVd8v7i4ENYCsN2324egqHu5MKRw7gEX0aIcM8BrLBlHmSMGmGro/5uv
	gk2Upljdj6BvnYVcaBdGCoNiYYV+lxWw+vu4eyA4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645919484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ngqj+OdZl4N1sTdPsyOdfnzKMW8JD8g14UEfRvl/oUg=;
	b=AYEb9lNFpL8oB6+j9Xf2vkK5ufV4JOHfwaTziAAwGG6imrTVA1QEtlw72YMfQWj7
	miY/qimGt59VDhhCm+tWTO8juJQjdjzmgg4vOimTUINn5iiBjmVgVKaZLw8bVPjkYuU
	+5DXyRnLA0sgyZB3kRc4Xyx9qI55WsFdAZFaQ6A4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f38723b7d-8331b29a-0649-400d-860f-f7fa5d5edc2c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f6f63fb47bac0ce90649e3d310a616fe1817d13dbd0d516284789448bb32cd7b
Date: Sat, 26 Feb 2022 23:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645919484
