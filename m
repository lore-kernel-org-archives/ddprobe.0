Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 037AA2C9C
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 09:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657790212;
	h=To:Subject:From:Message-Id:Date;
	bh=GlI1L7p1LtJxCiudWALMDrbcsoHwjgMWsuZRtbdVdkk=;
	b=ll5L//hC+2I/G66P9XwYc1NzNcSVCavRDaccguQDw23EIIwB1csb03eFqpGVE159
	F99EnnTWps5FxlVLVc9PtsIzKZF8NPIm6FTYAACt8C6fU66RzOiKLQlhNz0HIWXCDAT
	nhNI6nQ6aZIogaUxY2aReBoQiZv5zkLiQWyITkrI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657790212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GlI1L7p1LtJxCiudWALMDrbcsoHwjgMWsuZRtbdVdkk=;
	b=RStB4S92cKqxHql9OpNJX+26Tm/1gCqavbi3cw2fiBNIVMpOp9QRGP9FfM+oJRX9
	ejdhSCdDQEoxrAaUuTY6rXaJMaHFwSYSs43xCZdc6l9E8oTlEOSvBE/ruonIzIUy46w
	O26tduRKDofIesjkFl6y7VTrmJv/JqjOWNExO2Pg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fbff28a3-1a881948-2994-4012-a454-ab4ea39bafd7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d9236270c61ccf44bf756cdb3128f26061753eeada23049a48c9e9105fb7821a
Date: Thu, 14 Jul 2022 09:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657790212
