Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11FA3EA6
	for <ddprobe@lists.linux.dev>; Sun, 10 Apr 2022 15:31:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649604718;
	h=To:Subject:From:Message-Id:Date;
	bh=EJGTFE1epet2PCWJwP+969D/fz/Nrh3bXQGLuozNVqs=;
	b=ci7f7/1JERnbKbhpOmjYYZtw9CdkD0hMC/mGt+vCent/JOvgbU0lahYLKQTvwtsT
	ADqi18Zl1W9XVxTG93I+/k4DFfR4JUEtvDr58nSynajiNNPjGDtX32E3x9v/EzyakSj
	nLxUGqTz5vBRKcDwLWb7wEOBnKH+8JIgYskVwsRE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649604718;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EJGTFE1epet2PCWJwP+969D/fz/Nrh3bXQGLuozNVqs=;
	b=gbrve0gRKOAINJ/0BVHiGlxurw7SBQLPhSjGH8zmKVFysCLYH+5/PqXIIlB0jzNx
	9NWY1ko5T2wxQrGE4UxN+FFqtPBNrfgtjsrv0CGU8hJda3Qj8KD7c4pqPDLaRwrXQxD
	qLCGuomPUP2Arc1oHpX0FK/vo8V1O+UKbes6CaPM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180141a6f00-d12c0662-3f5a-4f99-9700-58f502e2e461-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e3bbf0c446dfd4d60c50b972a5cf190877ce68299e3b6a5a69f42dafa585e971
Date: Sun, 10 Apr 2022 15:31:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.10-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649604718
