Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14AC033E3
	for <ddprobe@lists.linux.dev>; Sun, 22 May 2022 20:24:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653251099;
	h=To:Subject:From:Message-Id:Date;
	bh=1oKjG8MY81rUDBiR+JOo23UpC4dL+SuIbjsPXNfAwtk=;
	b=GYyH3T11QFq26xPtvXnoSilHkYWzQlQOiXTQFA+ChY1SEFu5HUsJJ5NJqZ05Yo2A
	gUfEKmO/YM+4bNknZVKhQPJiM7ToAyiXKUZI3FPm2LzKSDLA1+8Ax1xEhoGYkmgiPie
	umn0HBwVX6j8krVSfeD+B2WGi+UxcUMLckZ5RsiQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653251099;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1oKjG8MY81rUDBiR+JOo23UpC4dL+SuIbjsPXNfAwtk=;
	b=J+bKkC/Wmc81ElZjJ4M8FM28FBGoH2nTJLN2zgZJ+jKvWC+soremJAZvixl4I1dZ
	xdk24OYOQCjRLwT/2VIzDN5w/ZdTLUi4wlmlx5R93DNmV7hq88mEEGChzTUXbgYcQ8S
	W42+cdJfomlzf+Icn7brR0eheK+3bipu8hjXzKsI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ed71cabd-6a412d1c-a884-4d5b-bae4-fb84cc2014c8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d5dab355c71a90f5f6df691f12f701edc0c5d83bb903fb126cf0d1146a4153fd
Date: Sun, 22 May 2022 20:24:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.22-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653251099
