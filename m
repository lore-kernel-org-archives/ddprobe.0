Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A432366
	for <ddprobe@lists.linux.dev>; Wed,  1 Jun 2022 12:35:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654086959;
	h=To:Subject:From:Message-Id:Date;
	bh=86cQHyVqLllycekULYh1dmHnoPrMP6ePQEDc93jd7Y8=;
	b=cXd8t5yW902laeFt+SRWnUgrdN1WK/Yjh7w/0iDTj3tX2EQVnpiclo4RR+NRZu5U
	aFFwx1QpYq8cfL0vpvih6KDwVFo8zrpJvngJVO/hhVWOEFtAIk0YyzYnDilQNDQ9nw3
	zNO+mEfeK3MDWnp1zykHIWhzZXIIDBB4gvyhMUZ4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654086959;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=86cQHyVqLllycekULYh1dmHnoPrMP6ePQEDc93jd7Y8=;
	b=DE+XqvmkxQ5CYojtL0fT9mt3mwII4O+hikU7sm9huY5eDL1B2f7V3h2IqhiYTxgI
	WvJO5EqfPrpN+UjnVHL2jbzhIv8UbRqRXZ6JdDw1s9c1xrudvisuBvaiBVbSUVJsgf4
	5e2ae4OVmCNXhlXKG7ldGjz0qogmWjorXSL4G+R0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811f4400b3-3743cb10-3d2c-46e0-885a-88dd5fd3972e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ada797df754889c1759704377642119abd371d12587288ad080e71c9cfbeeee7
Date: Wed, 1 Jun 2022 12:35:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.01-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654086959
