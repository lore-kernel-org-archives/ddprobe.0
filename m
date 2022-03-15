Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5992910F3
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 02:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647310584;
	h=To:Subject:From:Message-Id:Date;
	bh=2gGKrPn0Fdl8P9hf9wz+CvFi+5ni29B5NRpE7MywnZQ=;
	b=l3wfWwaousUrOpued9GRPAY3pFvZcLqQseNSwstVvw1deV/6o7u4j+g9LYaNzmyc
	VeS6iU77M1vJdBTpdOOlkKrIiSIy9cEftpeiwKERukEfMoaZjIFKEmDyHr/HEu9+Kue
	iB62ASI12BVxGgrWNHvrkkuK/FbpHMHICbLnpSk4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647310584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2gGKrPn0Fdl8P9hf9wz+CvFi+5ni29B5NRpE7MywnZQ=;
	b=k+08aJR3sjN4b133XE4KLXiLbbHrDs8PDVfEN7rYiVVJ8AUbj8Bfh0RdZMVgEzT/
	m05zoxcBVHaiaHfjtdeX4OjegOhV76WeCAb9EkcP2EDg6kyVXYaf26PGRNl/kNHEzeP
	/RlDZqUSZ2FOmBBOT+T6Hm/rH5qRYZ20RkVVILgI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8b5cbb86-fdcd9459-8d36-4515-85c0-7a8aa7394271-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a4c64d86fdaeca92c9bfd81f8407c06d85e793f148d9f1d827c7aefdc8f2f996
Date: Tue, 15 Mar 2022 02:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647310584
