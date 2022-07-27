Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBFEB7A
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 16:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658938853;
	h=To:Subject:From:Message-Id:Date;
	bh=UEOUJm3bt6e/RRl4g37Zdg6aKann9iEtHczrzcn9K7A=;
	b=W7xxvDKrSfmTQVyJaB7nI1cgqTnyUXooz5S/teTwGfT9wDD7PGM9dzfm4+E8qXWA
	bTNa5GnHaKot7XdQgRFKOo7Aklei/lrADMth7skojnPmB8epJrGO7u07cpBuOMpIGOB
	KlQkohdWtBMEkCBj8buateMvxQkqw5I0fa53nF9w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658938853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UEOUJm3bt6e/RRl4g37Zdg6aKann9iEtHczrzcn9K7A=;
	b=JcfhNGLac9VUI90foxPFkG9zVDdugfUCKeGqLZNltOo66NSJS5hS2JO8oZ2ZAwIw
	fY+KUYulPX1sUiEStwHlJqJwWAA9zAk52hZOX+g/o9KQhvlFHJvUmJzOxeEdToifUNN
	2CA01vtXlFHvuIIY5tA/tlQn9gXzWNfjOD3AJzXo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018240760517-c49512ec-4ef4-4aa7-9a16-e2f79904087a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c284dbe492cf8df2966b48136d236b117460e533aad6ec6af24ab70e1444ea0e
Date: Wed, 27 Jul 2022 16:20:53 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658938852
