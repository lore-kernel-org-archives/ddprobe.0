Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48A0415A4
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 08:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648370038;
	h=To:Subject:From:Message-Id:Date;
	bh=ja6rtFD4vAFV9AeDBiHDRnhpuDaepbqea4PGO0hIzLY=;
	b=BMnyCSK+DuHjhztxO2yYkOyYyfNrSUb/4GxgHYubhZRK8chOoYmiCs3ScBs+0Lhd
	++//eE0NukiDNPTwkoJ+7Y5REr3yZXvkFSQlmPFNPwMnxOHyUYo32bLpOyoxKRwCDXQ
	aO3NDvv7zIQblJfzVaPBalioUnHqy6KDDOQIkRuQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648370038;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ja6rtFD4vAFV9AeDBiHDRnhpuDaepbqea4PGO0hIzLY=;
	b=hLz6xo9ZbHqijkZfgJpRc274JaVXq5g0ncbS0eseHLSerz5bRw7rkvFtHFs6Y3C1
	8Uwb/e7VHA15Jc3Dr5ui/B3OoDboHy3ujZU5bhvNtPunbvwYVLlfCFPGvVyFis/SjIL
	gNy7dGARR2eVFWA/yR6ouVmDINl3aRSATobBEiQ4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fca82b60a-b6df99af-cde3-460f-af11-a284836bd581-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c1321176fdabd1852464e16d2ec4e670a8ca17ed3bd83e337c5371de3e3724c4
Date: Sun, 27 Mar 2022 08:33:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648370038
