Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C566258E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 23:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647040884;
	h=To:Subject:From:Message-Id:Date;
	bh=E94xgG/C9e58w29OJ1kQBEi/9m4htsLEFLcAP2OrosI=;
	b=lfQrbNLdkv9hv+0cg4PkBM1y2QXOgDKEgrrbAFckB8QjjuA59GizzSZmraeKCzc0
	Q0Ty6bfUX4x4CIJw3uWFOiyR4dzG5XsmeOk3NxjEzJn7cGlTc1mY+1/oF62AwODYyzQ
	XTZ2oFUfyFhZiOrLhngCwL79ghjW8+Y8zDkcQ5ic=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647040884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=E94xgG/C9e58w29OJ1kQBEi/9m4htsLEFLcAP2OrosI=;
	b=dSLs5+tEwP91s2ZVYSqp2Ykvpj86JX7EdlBUxVkR9OhTn+ol9WUnNdAfhKLKNAH5
	O4OiaRCQ5ziZGObQNmEUc4iVP3K6Wwo4K8kvvx0C/quurpZETZtGQKYidvZewBCTMk/
	62V2xCkhRqspgX2CdIDyP9emHTUuF+OWWSNH2aZU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7b49706a-0ed4192a-15d0-4ab5-af90-80699f65daf1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d2324e56e8dabe312e50012f1617dbcddb57f82830e40c7b79c795186b69d55a
Date: Fri, 11 Mar 2022 23:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647040884
