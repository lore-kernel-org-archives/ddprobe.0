Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C061733D8
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 19:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645470385;
	h=To:Subject:From:Message-Id:Date;
	bh=F8yLgKwnKxrgFAlmW8yeCYO22mI4qmDACxn/hdMf6C0=;
	b=lLqtupKsPlO4UeudL3fYqevh7KX74YdXerJqqFLTfd38L+p/wX+ADMsxPddVuYlR
	6KTmFDy4VzxjNna/nJZnpcbMbKPvIZWgImqRWFWgeeFDf7lZ6DJvCG/8XPV4HXu66zU
	2Wivf/gnNnWdAQolzsVFEJ/yvLAdMo7L6BPQMKBE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645470385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=F8yLgKwnKxrgFAlmW8yeCYO22mI4qmDACxn/hdMf6C0=;
	b=AZ7+I3L7FDPQzk3+tDOtbyjdoWjVvk/A46UJCszJlMdRmszWMI5N6zX3cOpzDr68
	sZXzGRErqF+x177y1xG48r6UQYk3JQqLp44Y/74QMOh8YYvq3tNRlMrS/XoEeQy1Qjn
	3V9wohIAoAAgw8jvUwR4X/pnrZjodUXzJ1T0T1XI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1dad8362-0be364cd-c827-4f90-b5a2-36ed70b254c9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5f2c18d141b1bb2c31500dc88dd0ced1299c37e03fecb2a29d0c27e484657e0a
Date: Mon, 21 Feb 2022 19:06:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645470384
