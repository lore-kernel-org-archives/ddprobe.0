Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 915077C
	for <ddprobe@lists.linux.dev>; Tue,  1 Mar 2022 00:01:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646092885;
	h=To:Subject:From:Message-Id:Date;
	bh=+SeGh/jylQgBojD2Vcs0vD2b62vMHFSXsUbZW6u/Aww=;
	b=IQqdjV6Nag4EsRXoOFqpCt25EekBWHbhPAxFJUsx0whBJraaTPallmnlJSq843+F
	1bFKmRBoUgd1vMEdjWY08he9naVqMlJs5M0kdOwVmzNdvY0GdHS0MShIJekli6I4oNi
	fdqr0tolV+qPG++qZIOC3IJBIrdeNZ54AZYKI6+A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646092885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+SeGh/jylQgBojD2Vcs0vD2b62vMHFSXsUbZW6u/Aww=;
	b=CQOsolP684d70C7PTNjCS73ozOR6SLjRChhJRqCAmI8GrxTexTXocszfcTZfKRhs
	VHaE06126gLhH5NZjXWOareitCeS04dK5KKfY9OBIxjJ/A6l1Puvmcnnv79BAGFA+62
	8QxJ132u4BJ7OrOnBvGYaUBWsu7cID1FXI2LkSX8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f42c81b29-ee8dedd8-914f-4c57-88e3-4ed77cec319e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fcf60bd161e727af8aef3fa6e7c648c2faad0d440b0e9dc1aeb20c5b06fecbfc
Date: Tue, 1 Mar 2022 00:01:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.01-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646092884
