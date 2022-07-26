Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E721C7A
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 10:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658830012;
	h=To:Subject:From:Message-Id:Date;
	bh=SEf8rPexe0iV007eDzBPP8fj+M9w5SkSKmxr1vzPwBo=;
	b=VoHqGQpAQHw+w/VJ7xvmmS5C+jRcvO0Gw2exHaKeBjHc+ZaWUmhaN3REuWFGDZ53
	1JsVeSgYajDUes607g9mgSCq2EZv62n7eh7NjRnWgjuwbpmRu/qQqZolnDRVdeT+YQr
	Mks9VyaYAjRL+/YlCxF3IQ5Q/FxpFYCGlYVh/AWE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658830012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SEf8rPexe0iV007eDzBPP8fj+M9w5SkSKmxr1vzPwBo=;
	b=Q5ToPYsAD7uVqOpI0azwPTDPuGGLZM02gYk3ybAhR6z8uVIi9fDY+M9gU47ZH8HR
	5smSpihA95Ft3ur+7ORhRLhjTPtE/HdqzX11ceZ7rEODDiGSfFgSXa7U85ol1+RU7l6
	IF1KUwWnTwYv/NDwwna3eZReH4ACN1llWNF2U1Us=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018239f93f58-052b617e-379e-40a4-acab-cf3b0578211d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 316f54f43f113a06c76311656e2a30dfd9e1c9c4800292c49a8de195a16ba88d
Date: Tue, 26 Jul 2022 10:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658830012
