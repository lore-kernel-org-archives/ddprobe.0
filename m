Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 916A723AD
	for <ddprobe@lists.linux.dev>; Fri, 25 Mar 2022 09:53:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648202038;
	h=To:Subject:From:Message-Id:Date;
	bh=QWi+idZSznLmvSvxu7S6e1CjIxPSzWHZFOLqYaECS5c=;
	b=R9jXdERhO2QuHGL4xgwWogA/1PGsEtQiyqhLShdadIPt4uX871udcA/BTO4nl1Sg
	oQ4tDnspEn0N19cFuGb8sVZFHRQaeil2q3w9qYEJ51r7Uw7iMgcuzMSmuK3ZlKct0So
	845sNrZq1+JLz//zBd73aqoK4gVXiZBwxiQLbozU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648202038;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QWi+idZSznLmvSvxu7S6e1CjIxPSzWHZFOLqYaECS5c=;
	b=aEm4qFRKPPdIkiw28e7ZtZyfoUDRWmV7nC3EOlHulQlQqr8a7PWR6JrZ6mwGXcZm
	9kD1+dgwtDU3oLe1dcxPnGoKdZ+90ayADBblF4UM3KMp2BswCbo9mv9vgH5TEb3dFpN
	vxOuriywGb3AIcoq4RoC/CR8oRpZHXVputQc3kWU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc07f3bf0-5ec5f56f-ee22-4a84-8216-77361204aea3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 15af95f3ab78c8c8a74ac5a60bd4ac9097efe7fdb6fed0c4e37974f622bdf51e
Date: Fri, 25 Mar 2022 09:53:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648202038
