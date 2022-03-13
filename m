Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 692B1622
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 06:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647151584;
	h=To:Subject:From:Message-Id:Date;
	bh=GMefWc9azrCmdNPdMVlMqYqjaOttkcL8RvNJ4KsWj9Q=;
	b=EkcorjP6UxNExl7jnjpGJPDgPU1jwGc7CVvaaGd8fGc8eAXvWpg/CFMqjpOPl2Bn
	iNF0JMZ39pAqK59pa1QGQP/mRdiWE93+iatrMqFpJZni9eXcaASASseZtF728K7sCyK
	Ia6NEQERgWE0nLdGHaaqvznXJiTZmSgRyACV/guY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647151584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GMefWc9azrCmdNPdMVlMqYqjaOttkcL8RvNJ4KsWj9Q=;
	b=QP01oOa5X1f2ikUEl0IiIG/2Q6tNjDdUptaGgW58jB8yOz2oKLZHgB4gXWdlJ8Hw
	zIVv03vsJBpdtO0MsJGqnU3OFALk+Sq/P2t0su7VyVQuji/5CYGuvCwwuSq3PQaABy0
	K3Xfc9NXYqSTHg0IyXlB8M/Ct7F23PKxNAOVzAPc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f81e295ec-8d5864de-fd89-4e49-9e42-58a7fa7bbe58-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 820dcfc5d1e16b090150839f38a2b1ef04ee7fc9a2a2ddf572d59cfae379f82f
Date: Sun, 13 Mar 2022 06:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647151584
