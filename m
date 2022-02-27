Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85D9B3222
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 21:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645996884;
	h=To:Subject:From:Message-Id:Date;
	bh=F5HfiTJWIBuSox55HnJ2myI0eKaXHvwtYexITQy2faQ=;
	b=U7PpHVev1cd3BAfcFqZ8Ur9+j69B3sTBOQPG4KT6M+qqlYGjnIHOf27+muZ0bAXe
	NLA1q/mDWh53W2ujpl60Y1+vfclA65D3OzDkjq7G/DLdexFMxYoqaVZ+FwSA8fVgJrx
	XX1Y/LJpYByWu9vshbTEix4eb8Hs+ypKVUkjnSME=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645996884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=F5HfiTJWIBuSox55HnJ2myI0eKaXHvwtYexITQy2faQ=;
	b=Pb8m77pDAxCWe4ePk4fQlwcsVenDJ0SOFoytsIj6TUQmZ3fIbrbysif/0sPv+Sv3
	hMqG4fyIZ5z2bQtrz14kluW1brjOQu5NZuCVkCyXfPzg9TEc/c+whwM+SGIpr+2Fw99
	EU9aqwfRVIHDWbO6X8beY6j3UjFT88UQY2zd7awM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3d0f430c-3a11c2bb-9b9c-45a0-b9f1-03e1598715e8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2250c0a0005bcbb8e92a3a1228623a0eb6cd225f5b002598cb4e929ac9c2855a
Date: Sun, 27 Feb 2022 21:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645996884
