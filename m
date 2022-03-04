Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86612815
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 07:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646379084;
	h=To:Subject:From:Message-Id:Date;
	bh=zTu1vkP+pbtS9cKlHyXbgQAeKHKh1SwDypnYGiVLeS8=;
	b=RUxPJHAU3DCatqlWXwFtzIfUFoR4eNaOaP6li4kHqkB/vBV7HWbZh8xux5T1k8Gy
	MCjNOln/jDWzPvHwSrzNLM+XtAtHl1vK3KUiQHb6+HuPxCf0pURL7v692iU/J4umhsE
	qu4lgBqgpTKisY/GKBp7qdgaQr9Wrry+/GPs2Dm8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646379084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zTu1vkP+pbtS9cKlHyXbgQAeKHKh1SwDypnYGiVLeS8=;
	b=IFfsSzgZno0noijM/zr8ByXf4tBXb5jEEMv7dmkP8h91jc+8uDZEgsyvApzPrNq2
	gIHQNymK/GxPqqW+D7rnWXN44Vyn1qmVbwz9CxTsJ/fzFSXYIlfE0TmypvlxgnbTc2i
	gNBOVGJafz2uCLKD8yUojAKmsrgVzExlvJxKwKic=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f53d72bae-0234cc6c-61a7-467b-af22-0c22be3db34f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e939ba46e69e9803a8273a373e15699a27b7bfd6d947103dfd08375d6ad61286
Date: Fri, 4 Mar 2022 07:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646379084
