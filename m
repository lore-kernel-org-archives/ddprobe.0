Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21B207B
	for <ddprobe@lists.linux.dev>; Tue, 19 Jul 2022 07:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658214412;
	h=To:Subject:From:Message-Id:Date;
	bh=jGaihWo27pgDUDMnwhkEvNLjBiE/qAlIZx2V+r/757U=;
	b=KbggkODjC15m5KDxpnWKehIQvBd0n/Zx9uzXNBSrbHyzAJJzE45EMTFyEqvRp4fu
	mizEuyQtBX9Ype7B2V7FtoU5G68UBylLdXSBYloMQpWZorJRBVlAh9BqscsV7ZjCT5O
	qezrG0bTCubu9+sPXZUffhhXcTHzwlCQiz60ewZU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658214412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jGaihWo27pgDUDMnwhkEvNLjBiE/qAlIZx2V+r/757U=;
	b=EopIonfGYcZ6KwzuMA/AVu2k9/H5xV+YnAVhuDQ9Sa6qYMkDdJ+xClAN0JnHKbqI
	mA6EqZU+MmLN9B6ivt3Rjavp/s2k/rTWAA2FoWP7AKvnQz7xmXsY1qUtQwJbgVNhwWs
	rEuCKoH6mGJiKu2/1Op6KsJV/XlHoMRnWdbzTAwI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821547f00b-61f324c2-fff2-49a6-8e87-b4a8cfc98910-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 884ff5d02b4ad121dc5f262101da0c7dec38d024d8cfe1d116d026a269f3d75e
Date: Tue, 19 Jul 2022 07:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.19-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658214412
