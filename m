Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 376AE7FD
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 04:38:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655008679;
	h=To:Subject:From:Message-Id:Date;
	bh=ETtbMYw+HCklKdzN6Hd3YE6sO+lgUW9CfkrOJsNtSiA=;
	b=jPoDhNZFvqVAvxRlJZaf+2242iiUoh3VyLCxApFqmtnPW2nb7cJ47W/POtdu4rid
	/B9FK0oFo057AVBsaMn8OntLnBwKm3uQzPqUA4oVLMFe03NCQAXHXlD65Z2mTO3e7b/
	UGTaGcco0wsK99GntUDGVpl8Kl7+vpG3AnFZwz0g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655008679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ETtbMYw+HCklKdzN6Hd3YE6sO+lgUW9CfkrOJsNtSiA=;
	b=jM0iNU9sGIlr7FhazUTTM31jM+dO8KaDei6U43bNKO+S9dRqGLhwNK9MIVqCwrs2
	Yzux4Q563QhGO6VlzVvB8cNW1gNCHBBUkz7YzljwozuAufSqyNRhKaMsbmflNtETE3v
	o9YESuX90+Zkw0dlkfGqjiyf20e/YZRV/k9jW+cQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815634555a-81d5bf80-7417-4d17-992d-1cb1d563b2e2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 51935dd3b397246a2d49f42ec2bb3a5b9721074c0ab9e3a88b1d4359f0dd13a4
Date: Sun, 12 Jun 2022 04:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655008679
