Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 459807A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 09:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656408412;
	h=To:Subject:From:Message-Id:Date;
	bh=p3G1ev8nc2XIStPM9oUKTyFrjFup6lkcYw/bg9UuKCM=;
	b=DmaaGu8jKKPX8sR0wneaS0kBs8YzI0ftA3kYyWIvsbf962pf76ru9eWSSDAwJZX2
	mthAiOEXODguiPTzHjDTH8OJ5uX8rlHBMwVZE4lxwo+uwY9q/Emv9Cm5bBBcDjTgIbM
	d9guhk611p2vobHolqP4cwCvKOk+XuNeco42TbSg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656408412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=p3G1ev8nc2XIStPM9oUKTyFrjFup6lkcYw/bg9UuKCM=;
	b=WLBM994+nZIBjZA15jPDlXwbgp1m6a/TiOkXEZFGDEf6qlZa2rss4WTb/aAt8gSG
	KPetvTf0y57KN+zlv80sWteQe2+GkznW4qKOqhAXa5EPamFESYh7SAVUGoZZsVbXnhF
	eb8QO6calCfDyLfEbVCFbqlWwW3DrzL5mHECFvIk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a9a290ce-ec914409-fd2c-44f1-9de4-37f54edf9087-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8236a706c81b72fb6e367bdc88e95d919e4dcb948c9570ac7b6fc506fbdb8bb7
Date: Tue, 28 Jun 2022 09:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656408412
