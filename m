Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA7CB17E4
	for <ddprobe@lists.linux.dev>; Tue,  1 Mar 2022 03:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646104885;
	h=To:Subject:From:Message-Id:Date;
	bh=Mgb5c9tuM3Mu+h5KKPXj8euXHhzKdDBcZdEi6RvsNOA=;
	b=Q7pgJJJYaQnqOAy9ZS+q50g49zt6MBDp2/3QbJR4pd9CjprshmrIIT+iLbHLp4yh
	FmFY38QjgTxLI3ni68Y4rr2fF17zbvlQ4TgGJADdiqOxGl7irbwdpjUf2Dgg9EGYzg0
	x5yYpLl/Yu7ytBk8DA6gtNFXpgDUFVafLtJAqQFs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646104885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Mgb5c9tuM3Mu+h5KKPXj8euXHhzKdDBcZdEi6RvsNOA=;
	b=l3KbIRT4iaIHzBa7PbjFJztiaEvc0KpXu7sEdfu1GnK2q5rqLnWa2PQJKv8f8yqx
	mICHhMFuguQ+XjXee/99vYPKSyyVXNx2y9hLL7Qx6fNFo42Rs/32V63dT61zZMLFA4P
	0vG29ndrotDk99Dm8bHhvZAbRxUPQhy9S6F5QkdA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f437f3625-4234ad1e-01f4-4691-a801-e3eaa41e7a20-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7de6bee2e3abfa8ad5be47662b8b87db2ad52de79443a2b6e2dc850f19d11b15
Date: Tue, 1 Mar 2022 03:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.01-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646104884
