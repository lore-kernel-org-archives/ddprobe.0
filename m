Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FBF13FF5
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 06:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646028684;
	h=To:Subject:From:Message-Id:Date;
	bh=wR7mAPDVUn2tCROj/6s3ryPGolZoxV7YiWkWHuwkwbI=;
	b=iHT9a80dsN2O9+dxJwcJ01HiaqSJz8dzP9eF6CpD5gmFFiuE13PWok3xxfhekSPM
	pZuGhLQ7A7cUq7vCAS9l70C2j+Y5tL38JGQ4r+dFRbaG/gJ7uXj4LR+xgT4tQ3XgdLS
	KEJ9yS470aA4gICDW/p8uV7VQ3r4enZUrHSlNkUA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646028684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wR7mAPDVUn2tCROj/6s3ryPGolZoxV7YiWkWHuwkwbI=;
	b=e8MX3kp71CoTAxACQd/umSWJWPaG0iILLciBsc00p898MbiNokaSISIPNifJiC3Q
	acpFM1Ef13/7WtHd+cG0vrCQ3xoMb3qBjPNvam1BecHDT6BxICvXrUo+aCkQSD3ZHP3
	Xp66EKHPLDbKJUDWh/5NEolGEjC4RU+QgwmYNwGM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3ef47df7-75e1ac6b-df8c-4f3e-b725-14ff3ea74215-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 296b18aef9f7057742ef606b18dcadf06cd8e9702df775f86f5421488724d016
Date: Mon, 28 Feb 2022 06:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646028684
