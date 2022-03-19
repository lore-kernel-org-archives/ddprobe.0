Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47599160
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 19:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647719184;
	h=To:Subject:From:Message-Id:Date;
	bh=7DQEfh2fMmcLAyUjOhzyd/W5axt+ONBs73H0jIKtv74=;
	b=EGa246peMvaT5cSEkvWBU7tDFut72zaHZsvWJz9PL/aMtHb+y97TiJoV8Si5UuZQ
	ovAIeb2kaDKMX4JnRFnS28em5YLJZ0nlp/nD0XIUCedOlV3S+6RCC8t7h0odLVz5Uvp
	EqjUYyLggJ9L8+Mo0asbaFREwVLvd2GxXrmAPKFc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647719184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7DQEfh2fMmcLAyUjOhzyd/W5axt+ONBs73H0jIKtv74=;
	b=jSgIxrMkeh2F6/ERm7ZJEoQn8A1IuhB/hPGn9sRjdPErDO/7nmYRhl+TbHH57/fk
	1ZoeAIdkCKzanRS3d5lX+ZcLnf4NR/43iPArlSeEN9wkAXTBwVpGMGQtYCMpKkrt0pl
	l8XWV52T5ssseuBI3LZCHFIeFIp0X10QNxJMyboY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa3b77968-27df59be-e34c-4872-8303-9d2971731ca7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2d2988e42f1b9d99c18ea1de5af4e041235c9b2e69dffa224ef078fd2dba1b9e
Date: Sat, 19 Mar 2022 19:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647719184
