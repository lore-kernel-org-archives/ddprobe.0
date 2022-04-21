Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00AFD1FA9
	for <ddprobe@lists.linux.dev>; Thu, 21 Apr 2022 00:01:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650499318;
	h=To:Subject:From:Message-Id:Date;
	bh=bueK+Gdnd8YSYehAkuxuRfboktgiZ96adKx+2t9t72c=;
	b=D0qh5yy9pIkEYG9luF+26BtuFLyq2ZFgB/EGWZjt1PFiBOxZMvPV1t9L9UNG7f86
	PkjEvmGM/lkDO0UKyu1SAbc2e7GwLXkXFolUhG3abHG7dEDwH5yPQp4KtoDzVRjOe09
	aAAFI6KuKBtUG3bp9IJmLlytBqodkhq0taHZRwVg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650499318;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bueK+Gdnd8YSYehAkuxuRfboktgiZ96adKx+2t9t72c=;
	b=gLC+4hJ9yr0ReVvPKpq94OOFWb14OI4ScX0lcXepsA7yV+rClTogciqCq/F9buhy
	DrBUm7dW9aAsIp3jOqhuwCsU9moMf6jrYMY11vG8LKJMs8UI6bmuQ8OrQrpz+kqy5Vl
	Bap8gqsyVqmLJ9jsSdnVAwA2A2BT0PhdMrLbTd9A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180496cf218-177bb57c-a750-4e7e-8a39-71096d338db2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e998200cbc5d5187efa0d6122d64520db13996f2c25419f870566050f5de63fa
Date: Thu, 21 Apr 2022 00:01:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.21-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650499318
