Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65D004C69
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 18:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645209985;
	h=To:Subject:From:Message-Id:Date;
	bh=p3Q5snO4zk/8P4eWcEljpIlJd75+rlyVPvHv8E/nMVk=;
	b=DDw0ALIPZM9V6rCgF9T1RN6PhXRo6PqCi9c9BJ+Q7vvcmvGH/euGzbPsegu2QWMj
	91g4QrGGVFvxwEPz3pGH+LyXtC0EGpFx1TaS+syoxHKRaHPP2ZbRT0rzgQrvlKJ5oBt
	Rg+aEs9Ivz9lyT0gGCpk1GoYFKsvWDH4flHovlTI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645209985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=p3Q5snO4zk/8P4eWcEljpIlJd75+rlyVPvHv8E/nMVk=;
	b=ZetzYGIdEpU68SwIjsBpEsFMYKXhLxyIER2qf9U0XlZu5MLKv5W2YMw2w3GhFDM0
	6fj0NvMswuS7k+v9W4FCEu4hNZOEwPX/oVXMFNCB/kjOKsowll1hqiS4e67EGZOEksT
	6ttGjit884K0BrhMz1wKSBPIOr5N6vJc13iIf+oo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0e281f7f-90579e8c-d93e-4efd-8127-ed98364a4d32-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ab64469bf3d1468602bb6060867ce4dbfd7fe431c943d47075d81ed66ca89deb
Date: Fri, 18 Feb 2022 18:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645209984
