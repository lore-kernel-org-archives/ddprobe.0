Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67B447C
	for <ddprobe@lists.linux.dev>; Thu,  3 Mar 2022 08:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646294784;
	h=To:Subject:From:Message-Id:Date;
	bh=uoKLzitwJF1R9INB9/FB5weWEtfDgFTc8TmQklljlaA=;
	b=W3CtS72cWRjOg1idWtOhhtqxxuyTj+YZz0rlq70Nr1R0JRkpKBq3t6FMYQVNSFue
	yjAtkyghGLYMyg4GD0yTKKCUH9mRNmFvYZi62RaVxgq+xhq3UjS8eb/qTjqjLJ/xB9c
	e7568zpYgwudbcABM6xSY8Mgs3g2JgOchFTIfESg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646294784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uoKLzitwJF1R9INB9/FB5weWEtfDgFTc8TmQklljlaA=;
	b=l/OVZSFrJOZcQWjqtCPJ32Nj8+MDIDVEOuEkfcow4y6e9Jvo95Qcf/1w0VTPiuTS
	on1bWpRWnj5NAY+sbKD07Fhio+uuP/0GtXtA8lX87ocV8VL+Ka0H4KrwUfOsGGyy+Xm
	hxaoe6YHQfXzbHRD5vrHOLJJ9MwlvKgndx92ulH4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4ed0dadb-7638e2fe-17a3-428e-bdbf-c05b0e40c567-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 59fe0249351495e0274c6f57ddda565644e90b3813eec7195041f98c40f14451
Date: Thu, 3 Mar 2022 08:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.03-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646294784
