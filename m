Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70C653B29
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 13:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645192584;
	h=To:Subject:From:Message-Id:Date;
	bh=yXnumd/JYEm8xO5KCcKaC/GNa6hvHkCCY3kI/YQZbm4=;
	b=Gs3jWfyQ/8u9m586VFJZZ43n/7w/QHnCTB6dUfeFg9P9XSaIz5wUPDGY7ey+6zZE
	r+mN8xtfDZcC2LQUH/0yPLe0bWwL5qiWDO+BB9gwdMdwctnQjODrufZt8uxgjdWdvVs
	gSOiSz5m+dsss2UIQOtrMgOe7tCgRICPy69i5PLk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645192584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yXnumd/JYEm8xO5KCcKaC/GNa6hvHkCCY3kI/YQZbm4=;
	b=DHSp//UMvCLRrgiTZ5GiEx2Ar4U5uG3uW3n5gEpEF9V54fOzknvXMGzkV/OHxgL2
	xCAinvAhdw90wiD1td94+G4/cKz6Gc6pZuuCBCxiEf2majQh/zq7x/2z9HgEeWX0XQV
	6OzSwYwVxzXWRM2HpmXy4PODA3AjjgAES1JpyvOQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0d1e9e55-15128aaf-b73e-4cd4-98c8-98f30b59a6f9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f88fad24d8e6a44fe0d62e6bda301f492efbfce0828c76d603c9368c37a38337
Date: Fri, 18 Feb 2022 13:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645192584
