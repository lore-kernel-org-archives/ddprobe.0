Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9362910EE
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 08:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646642485;
	h=To:Subject:From:Message-Id:Date;
	bh=g5ebbPKZnhePJj/iA5XsKJcbuFvMHCNH+AhgzzGrySI=;
	b=X0F1O2fFNRPLygaA/d/zWsU+Oc8xWdadlV2wFXKH/SL33UN2HDAbcrc1atMY66/l
	EzmpsAzbuiGkJv4G1WgBAF2R225gbaqwZvno3wBEgFyLcllIWbcfXtBny3Iastza2V7
	+6ZJ9B24GKU9MxrpUQLViTQ4OYaGDOEGu9bd3Gu4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646642485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=g5ebbPKZnhePJj/iA5XsKJcbuFvMHCNH+AhgzzGrySI=;
	b=kpAkFg/R0FKb8x2AlE27d6utsDKpWO7yI85iUtSapfExSS12N5L18JOcXUYXrO6X
	EouVBkJZiuPxI4Tsabw7PG0E26Q+M9bsjurg+us3bd9+ZxDP+ga71jhKHxSdj41YeNu
	geZXIujah/FbICI28U0FZZf1jg6tcS6JasBMtYYc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f638a5628-0dd0acc3-c01b-4351-89b0-ac0199b63a22-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5b33551a167bfe8a95ad89c790415b658b91450df0c9247ec7f9786d05eb046b
Date: Mon, 7 Mar 2022 08:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646642484
