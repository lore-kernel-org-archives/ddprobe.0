Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4F6F43F8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 16:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656002212;
	h=To:Subject:From:Message-Id:Date;
	bh=MFKJGd4VE6GIOMZFkVJylzO28rNYAFv0S+u18SIWw/Q=;
	b=gJHR69/fhYh3jvUqXARvLecSoBrvlvsIH/gZFk9zQ3REulXgyHNOrijbkKqjtjgN
	8hIsX7bc3LDPfOllEzfBBtMdxtAynqSVx1woe1hV+d7CW27R9sv+bbXzzFWMvaRDSFJ
	LLnquR5d5O7ao08BmrB87J6dSxHSn6vTdt7lAjH0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656002212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MFKJGd4VE6GIOMZFkVJylzO28rNYAFv0S+u18SIWw/Q=;
	b=jgVe6BCYSDgpFcPLI6vnvYprtBcgxen44tZ/1zPqVv+Aj+0LRQVOPX6b+6wbZE0m
	lk12cMEQurEa8C6b/fkQD3er6hk+o+9nzZ+SJ8oFS11ApTPJVU5yXFZbkcK1UCtizsE
	y7u55tDWsCjxwasLNLjGINSEI22+qNs7GqK/mrkA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181916c7194-0f9677eb-0954-4777-8f67-ba4610285722-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 31211265abed60d03b44309bbd017a1c8e79cd790e582074228008a753852260
Date: Thu, 23 Jun 2022 16:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656002212
