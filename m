Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E48F7F
	for <ddprobe@lists.linux.dev>; Sun,  8 May 2022 09:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652003098;
	h=To:Subject:From:Message-Id:Date;
	bh=jK98yKnhQCMQofMeLyhFE3FiwhewtocM0pLGpvgbc+U=;
	b=gTUvecYZ2Pdr+rshZpGDg4v5nd0RMsXBU4un8/YX9eitTwQCuyZP6OsPqdmWYMa3
	4O+NUyRCD2VwbncRTR/lQZuMbOmJSQf4f75fCIeBmi3ERkUPoojSyl9rOQ4zA8uJ91A
	Uk9rnYkiY9Br6srjRJse2ULwgbejQ0jziGTopdaw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652003098;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jK98yKnhQCMQofMeLyhFE3FiwhewtocM0pLGpvgbc+U=;
	b=DvFUslOslM7YiQVMMIC2gv9qIn9uVZs/PJS68on91UXBHs0jvmNJQ05MzXF5whYA
	2CluuNUT2oYRAz7aDF1VYrqD+L4xRrEIydDsHBG+DUt+l6yz/ovNqR+pbZkNhg1Q1mG
	J+Va97YZJTwmkMfovm+G1IBYKkucG2BgxHjfXeUA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a30ecec9-bdd38906-e008-44ba-b817-f3c463540d63-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: db3bcf88fd3547e1fd173c884e14544ba9bc2fcc7d4bc6ba71e97b72ec7da466
Date: Sun, 8 May 2022 09:44:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.08-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652003098
