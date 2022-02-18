Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB19E2F32
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 01:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645148185;
	h=To:Subject:From:Message-Id:Date;
	bh=Pl1HYJ+jkiMC8C1hB8s/joe0GJhoM6aJdA0cZdL+4cI=;
	b=XX5JRqy8jmoSgVeJZumtHxTpJ4690htH2D5OcwVzuU28+C9jzk5xFdOA9m2fNyfM
	xluIZNE3Da9DCY9pZORe3JALUSRVK3scAeL6Ja9Zt+CNUtavit9ghvNCClWl64453bI
	gE21BPAzrkQWJaAUZsm1wQEOFhDOhRFGSHFFP3Z0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645148185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Pl1HYJ+jkiMC8C1hB8s/joe0GJhoM6aJdA0cZdL+4cI=;
	b=gksFXbGyiQb9195hQSC51OILIe+IpZdaYOrbOtYzhCk57AI5M5hT1ALsQdeJHcYj
	NacsgIOPmkuswTEZZd3RU+/MYLpWDQgYgcnOiliKMabwuvExy/0+MLLw2bNu7FJBCiX
	3KscsNQnjEyTpSyF15VNIfpUB/2ZtRONF1j789S4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0a792148-1c8d0b88-98bc-4788-b466-3e4dcfc7fabb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4d82280f7b9f97554b65d39ef856755d63147f609d1272285a268fcad53e3d3e
Date: Fri, 18 Feb 2022 01:36:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645148184
