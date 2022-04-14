Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C7107B
	for <ddprobe@lists.linux.dev>; Thu, 14 Apr 2022 08:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649926678;
	h=To:Subject:From:Message-Id:Date;
	bh=/OWmwoM26/fi2X/NwWa2tFtHyMUCJUjxBDs1Nj+7GN0=;
	b=WI6JmrNHYHAxIDKorV27pwlkwn9PfsybJovE94dN5n9B1hriS9+Z2HcG2y44j123
	bFJNadmJYT9dE4bZhMuRC7W/VE9sWV+L5yUjIf7AssSSLQg1bR7bqY4uK3GWDjjTGxp
	tF5QX+GWEicZR+2h2hFrBMyO72GXK9txW/7qh/1E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649926678;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/OWmwoM26/fi2X/NwWa2tFtHyMUCJUjxBDs1Nj+7GN0=;
	b=OkTykW/V9Cmbs2GU+036fSs60P0gUtgAMZVRmWaAj4Qa6zdcrFaVdX4xTQhT0w7l
	dv2blk0qg2Y9UEJr2QHqpGEIZd14R2CnyZU/z/C3XVW2dP5mloQn+R/4FBNw7oqQrwU
	ANpSRBOmb64NBn7NmHDrHNuBX/dR2MbcxsW5Ptfw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180274b2719-10e01909-e5c9-440a-9417-07128ef5262f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 56d59b4e1493c0b8453ee30d52010003911c37ab1e50d50dad0e60774df3a56f
Date: Thu, 14 Apr 2022 08:57:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.14-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649926678
