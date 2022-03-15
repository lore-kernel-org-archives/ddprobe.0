Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69AEB2F4A
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 00:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647302484;
	h=To:Subject:From:Message-Id:Date;
	bh=RlTAkjNHKwZRVzzGAWgo1BoftKe8FzYhbHOXkOiAh04=;
	b=YP9266ee8NUUByd8CULJNoJsUu2cm9gEwWetGh8m6slXT4Mhwe7zkAwFb55czjWi
	f57oTJefcmn3ktMRVFlf/33BmShDajAJt2zoFoHMLRRP6K7b46yEI+dkQzuxJ9ttOap
	cTcZGAXD99FYJjveEVNjuhApVatyPGzYijOnBRVg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647302484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RlTAkjNHKwZRVzzGAWgo1BoftKe8FzYhbHOXkOiAh04=;
	b=id5tQXZ1ViK6pP7eBh3Gas1knlww5ipOGVwj7R/Cigt9T5QjIFM8O3LkW6M2ZoWi
	KqBt30FrG6DMUInw87iIHgieuEGvlYdEPZrBsrWe+1uFv3/J47rQhA80FXDYRJS/dqe
	+gerprXS2W9RCNlPm76qgRp/sXTNfY7jyeGNQDEY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8ae12320-100ed782-7bac-4531-8065-05645af9a295-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d06f9d28492a6368f6ef6db8bf73b702a0476bab0b03ce58c337d8360ad9c45a
Date: Tue, 15 Mar 2022 00:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647302484
