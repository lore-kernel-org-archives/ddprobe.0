Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA9C7A2D
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 04:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656563212;
	h=To:Subject:From:Message-Id:Date;
	bh=LsZ7oWHy0T0VYHg9xRsCmrGJixMzdzXn/f2H6RUsRVk=;
	b=CZgD767w/kNQiDHxvPh0cnPPdhdLTflThlVVdSoY0hsOXhlzUcb/LoiUasu6f89c
	SElZjEsO1ll7X4jQGVRCOhsDlhCWGTgu46DY1MTXwiD0t7gwCgH9GZiO5yTGtlyajWy
	+cr6pzIfidqaMmjjxCms4gp0kiLuyo4wpWGx5+8E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656563212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LsZ7oWHy0T0VYHg9xRsCmrGJixMzdzXn/f2H6RUsRVk=;
	b=CDtjSni5tFJRAihTz0mAIgCs6vr77/YsXr6bweQSJSSP/ufFe+Xsl0DOIgZPk6pY
	tcCOg9a5Aeur1K3y9r4i1sRIvH+YsdBmIRWtMXafMQN0VJLgjNyecbr8FmLZuGtjpOj
	w7CN5PCcH8yWpFgdFuA9xztD4GIQjeGZzFQnzdAE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b2dca01f-74e4de59-760c-49da-8f4c-2c162006bd6d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6821363cf818c492f49149774f39a0b9a19d115178aca4e5cdcc0e716b07a563
Date: Thu, 30 Jun 2022 04:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656563212
