Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ACF14C75
	for <ddprobe@lists.linux.dev>; Tue, 19 Jul 2022 21:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658266012;
	h=To:Subject:From:Message-Id:Date;
	bh=K6xqpX9Bmg0pz4VRnbqXIjynT6d/jSAB8pbgoOZrIGo=;
	b=RV0ZkL/OH83itIVgUC1TZ3YTttdx+phtJew5Ql4jYcEzedr/nx3H/845+xrvBc/h
	KWEb5KCGgryvZMyAJtM9sAPGi94SdBlMmoKfrN/QuT1iySYS+V7qkmZsQFLjR0dkzGe
	1OrwrOhnwQjpwBq4fJYT/q5TYbifFxgzJgTxIBYc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658266012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=K6xqpX9Bmg0pz4VRnbqXIjynT6d/jSAB8pbgoOZrIGo=;
	b=SpHtJUr6CpHjiqV7O5T2e0LxoijaD8oWVqTpybhfeSeCZUh3rRPue1gTvNDMaE6W
	W8z57vaXd/fKN6+7SoBw8w/T7tiW7LCidrljQCw3HYLIHSwjgdvOZLJ9v9w+z7diYfX
	DnypgdK+RgxPyumkqrCVqMSc8RmcIrUFmiwz0RRY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182185b4acd-225124e8-717e-4951-8dae-d26db296110f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 41924735f91b1190fff7fd64349766c9e5f414b55f1de9ab6b0097da20ac1b54
Date: Tue, 19 Jul 2022 21:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.19-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658266012
