Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 732F77C
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 05:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645939585;
	h=To:Subject:From:Message-Id:Date;
	bh=3FqxsNOigfzQXs6N3rITLBt8OSNOImJIyF4fcdlplsU=;
	b=RPH9IeAZEFnixWqgpPGnPr9zgS9rIiJip/Um8FUZQzWUZoAVwgIS9ytFkAtn9J+u
	lK+6YZUxTdj+byV/I+fsSDlrnav8FnOYFlqJ1XAdgpDOu9mcpT60DUpiyL+LFBL4vSD
	ffpoiMlND4yqMBagwF4QaVgJzG7Tjwvm+Piwb5zk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645939585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3FqxsNOigfzQXs6N3rITLBt8OSNOImJIyF4fcdlplsU=;
	b=YIYyFhurgbMtLtvlHyMze/pU0R3cnuY7Bxt+iH3uasJo5CY5wWkhqASLOwZxRCHi
	Y0aQmEUE02WH9o1qBfMrJOyWvEkOeOWx3hLEBYgdGdLkZynG8goGLCn5u9mxoDkvry4
	HXlW05ShcuiuEiX78AFFGVnra6jc6ntIsEzZxwq8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f39a4eefe-fdd13ee1-bd2c-4c6a-8c50-304376185806-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1cb76c8676c423e7f3048d4b2098698e6adf928371befd88b980b09690a0f515
Date: Sun, 27 Feb 2022 05:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645939584
