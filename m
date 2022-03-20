Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9956929AD
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 11:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647777385;
	h=To:Subject:From:Message-Id:Date;
	bh=JCK/hBsFdXXJSSWwR8YwQam2rL7nyYXaprbX09xdcvA=;
	b=U1zMI3fc9iqudIZ3ZoPNywPhhQKS9b4ej0nbVw0fdcCVoUbamoinZaFrYUmBcS8w
	Xp1wHLkKn8MY77Wn/ZW09YoDSD5uvWrhXGHquMaEqF3FFLZIwl3je5A3/mtmEMFqt1H
	Nr3tA0gXs0l/VAlFkpEz1ITJ48rmUIyLqJI2mwnY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647777385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JCK/hBsFdXXJSSWwR8YwQam2rL7nyYXaprbX09xdcvA=;
	b=ZSLxWd8b1HpzAdMtRYaGeyVjJZpbnG6p790EIPwWSAp0X+YmT9NYo0UoKfEMe3Qf
	ZMRtZ0507pZ1B150m0XnmmvataPN3pUqn6xgNulvlFjRVi8tzHXccWSHcXUgFhYdnuA
	rNOU5tcIMpm8ElXZDTTYmxbYvInL1RYuzDP1MdGM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa72f8930-842b5bcd-f7c8-42d3-9a90-2b60088334be-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 396aee0f8125a5778382c7debaa12926690de459d26190bacd994795458bf765
Date: Sun, 20 Mar 2022 11:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647777384
