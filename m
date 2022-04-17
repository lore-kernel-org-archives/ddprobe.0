Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ED682C9D
	for <ddprobe@lists.linux.dev>; Sun, 17 Apr 2022 20:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650229138;
	h=To:Subject:From:Message-Id:Date;
	bh=4sYBETeTo1IYNTcUuoESg3YhHIojfLMPoaSOWEEzmk0=;
	b=aDJNQG9y1RBD676UgPgOSkMIPZo6rd3rDjY91LAyjykjaF4vNLuTOH+idTLvRBjC
	PPG0TOKxC0VqJ03aeeHDJEshxVw2IKZuLaLj1XL5HAvGLt2DIRNfXK7Je0w/8bptuV9
	aQWC3PKjY3w9c7ilvEJ5/vEzuHjvAzeVkLdXHw7A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650229138;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4sYBETeTo1IYNTcUuoESg3YhHIojfLMPoaSOWEEzmk0=;
	b=AnJ/yyK1GX8qCMEcMGtMqmKYucSaJ2hsxvvLb968Hkit+MsBIAOAGgwXhLL9LOci
	1QpeRWAkBu5y9Xmgaxz6Q43AjMBdb0Sk0lb7q2bpbANP2cfI92+RjPhzeF4t96IJO6Q
	rSr9U90tJWP0yulEYAqs2aoRAZqAAoWLJ7a/w+k4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018039525371-f434f59e-7828-4d85-8e58-63fde8f1dae9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9970e9ac64ce08d3b2ec9f18d7f22674f03d67ed36b1e8feeca8b956afa431d3
Date: Sun, 17 Apr 2022 20:58:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.17-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650229138
