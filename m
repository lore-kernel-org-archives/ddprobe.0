Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AE374289
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 12:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647867084;
	h=To:Subject:From:Message-Id:Date;
	bh=kvR1BdAS9eiR2F+DtE37/UG2aT2hszkKNLfjYwswHfU=;
	b=Ez/X1rbK21FGJrPtfKQN45snDBLF9bPpP00F6DLSUmIJk9o3kH9eqP0eVrXH2eig
	HFF6/uFr+VIPaSVmmbO5HDdyM5B6e1JGDlbH8d0PujvP9MkNnSYwL+Mktv9COvirhuF
	Rw2fNF86B8zBzEfdrv9Y+zEE2sX04YR33GwduuEU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647867084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kvR1BdAS9eiR2F+DtE37/UG2aT2hszkKNLfjYwswHfU=;
	b=OO4gCZmOx0OWX/ZOkr9sARAWlSo4kdHeyJJdlEFcLlzcDM1oq2trupbOY+3ognI7
	AJb/r6jOdV8e1s3/iL8sB8XjAlIopP1h3tHg6479PUKufs/OSV1mQjPHWducW8iTFrj
	//4D1hYEzCHbyy6iZwUDulrmf2gG8GNP2cKFvfAk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fac883fc5-8accc83c-3477-4818-a3be-a02e966e46c6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a1585e53f3044ad5feffe1c7cdac899ca1f48a01ea00182a3bb5f2d261aafef1
Date: Mon, 21 Mar 2022 12:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647867084
