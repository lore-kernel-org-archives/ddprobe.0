Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5892C62A
	for <ddprobe@lists.linux.dev>; Fri,  6 May 2022 02:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651803238;
	h=To:Subject:From:Message-Id:Date;
	bh=iMbqbfM9eKFTuToVKcOhGC+qQFFKasJaR2dWoC9QSAU=;
	b=Szp6QJCYZFuslVIL1EtUVtQE92UrQzLrPpwVIJX1lDskmlAW519Xyb/JhOkB0FKt
	j4KuA/uV5+VH3eZmQYtWtcAj0pNuurmiLMKP09wu2sgMAVK5U0lvfJsoXXvCA20aXFz
	4YfgtLQFj14R/djNDQsMyP+RX5xrBQu6O+j93p3g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651803238;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iMbqbfM9eKFTuToVKcOhGC+qQFFKasJaR2dWoC9QSAU=;
	b=K+y5IL5IZ6d+WFFxdGexVF/m/zPA6vvaCBGCNkqGBRkVyl+gRz6fS1EdMcf4Z/jV
	f5UYpP6F1+ytpz+nGoiJwu8BZn3rvWsfXEN8whn07oYDjQOdqTckhCshPqnbI7v58EZ
	9xOnNM2FtA2yT3bE+jH12tL/HJvOx0vX+F7KDUZ4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018097252fd4-96b2fd19-b2c3-45fd-9d25-d5772f833368-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eb3e5284a3fb17d8ce7b20170862b24ae860d75d7a93446f2623ac02a29b036d
Date: Fri, 6 May 2022 02:13:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.06-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651803238
