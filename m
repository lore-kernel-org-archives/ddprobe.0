Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 726927A
	for <ddprobe@lists.linux.dev>; Sat, 12 Feb 2022 05:50:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644645012;
	h=To:Subject:From:Message-Id:Date;
	bh=b0IoreXz413ujcDKYwx6EFM+lrHCD3jf5sxAgD5dbtA=;
	b=e9NT0VxWAmgyApFqdUZafnpQ/o3n4X5J+AK6wXn55BPm259HSqVK78ZRYjK1x+hV
	SfpOjJNprfTIK3vMeN4JcCco9sswaWiIn34SmZxXPzsHoDh4QP7vW0MxallcZLLe6Ve
	C3LzMTOadN4tpekZdHLTIkj5yKP1oHprylvmwvzw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644645012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=b0IoreXz413ujcDKYwx6EFM+lrHCD3jf5sxAgD5dbtA=;
	b=WtdF97x8wISDecMtMI6zrUnaf3QF+HPBtKRveg0dasyhvGj+W/xjWJco1UObOVzt
	ghluFm/PBHhikG64OiovVHf8WhnKnzlzIWH8bBBZ84FeJaiMprE5FXph2kCHa52Cn57
	PPsEqscCjPDBtee835I2Ga2UsyaPQCuXx7jnpeZA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eec7b51b0-86e56984-307d-45bd-8673-1760901f7756-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 306c1787606f350c83b9af63ac722dc202e31d6bd2b1ef6f8364b99c21b50af8
Date: Sat, 12 Feb 2022 05:50:11 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.12-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644645011
