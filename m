Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E83C67B
	for <ddprobe@lists.linux.dev>; Thu, 28 Apr 2022 06:15:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651126558;
	h=To:Subject:From:Message-Id:Date;
	bh=HbLplu7lbuCHBDs362JPHt+2OGVVJvYfbnKU/KO9Lxs=;
	b=HBoluYtRLz1A47/zzKVKRetoqu9wntdt9pIvYymqvtLZatgxAwvH3Ao2zns01AhJ
	3Pvu4taAYX4prRZTjZKMkaDEDOMK862wdD4d+nF4Zj4QOZ8g2HrTexGsWisqxFEG0I9
	LHsy9OfRUWck0yiSb/iKprOdvkNExe6aw64uGQNQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651126558;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HbLplu7lbuCHBDs362JPHt+2OGVVJvYfbnKU/KO9Lxs=;
	b=fDK7LJJbb3MvB4BC4ETsrvtqYn8AjadTkOSkK2I5ciyFsAzuMDaAAMUFsZKwpjzc
	DyeXn3gJSWIcjHoHmmlUvHzJGkwcT7RlhXNZulwyK27ON+OahxtACisDWsBfmaDi4Lu
	N0EnulAvlsu8JAHWHKWYyRuKWrLz8sT3YYerJK9I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806ecfde2a-fbed4baf-b77d-4b95-9aca-6ae4c18fb8d8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0e0290f622b101ed963473ea996ce47d446d9f7300604614d545a791ce4030f9
Date: Thu, 28 Apr 2022 06:15:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.28-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651126558
