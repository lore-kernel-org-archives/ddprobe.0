Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA9FB7C
	for <ddprobe@lists.linux.dev>; Sat, 23 Apr 2022 20:47:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650746878;
	h=To:Subject:From:Message-Id:Date;
	bh=F3g8inOBmmZjKEqAUPG4mZe8VmNtHmQccIel+B1915A=;
	b=AGT26OyyFlbL8R/+XRFk9ozfdVqPeWjC2I13v3tHDCeOB514Xc7P8Ez7EHc2VuLq
	DcVgC+Klzf7EFp/wnA1MyT7cDkw1iZzLieMkxKwWZLWOFSAHUHwmCNZIvGzJ8gVsAdN
	GtjF2zyuLmG+56GMQCCKCxhDYETXEtcuvfWNLSvY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650746878;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=F3g8inOBmmZjKEqAUPG4mZe8VmNtHmQccIel+B1915A=;
	b=UAJ6gLKp/uW8Dc8eq3G8N4ijjMhTU+tybz3tFnoS1S4fzuoen5CdAwacYpagoVMS
	6F7SnmNuFIb4PYGMV5fwRsLGdupgbYRtPl4jnKTucVzsSxwRzMQNpzf1E9J+Y/iwcxR
	0J7fkwgqUlyKGHEKQceB3niC1wc1QBKjyC794Z58=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180582e695a-d2d538d8-ea0c-413e-959e-d985148e5eeb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 500e831ec54fd61098d3d2df6313d1631ca913d5d26c3166561f7eec9a833042
Date: Sat, 23 Apr 2022 20:47:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.23-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650746878
