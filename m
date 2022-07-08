Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50468812
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 12:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657282612;
	h=To:Subject:From:Message-Id:Date;
	bh=coU/OOJmWoSjXu7mDWIWfs3bYyuVvkB5gs5XkwSR2VM=;
	b=NqB0d+aqE2VKXr00k2y1dHSz760mXFCYVFGm8QHQag+2E9VlSEvRMpyf+FeQ4E1O
	P/OAXLfFJKHI5ergF/BtVTtOae4CHLlk3H4pZvtRaEC0ak/KABrgx6NP/U8vcPTq6XE
	8GnvZq1dUurudMwado2F+jNBTVDWyT7dCd2XLQEQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657282612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=coU/OOJmWoSjXu7mDWIWfs3bYyuVvkB5gs5XkwSR2VM=;
	b=Yjps3KmNMqPhGw66x/Q/89E+z0A40HvvB4xZFYTYa0mHfcPLdZBW+uXR62mh6Pgz
	sdys/txpHx98+Vbwhh9zgqK0XWSUgMljBKPjCOHfXmR+QX3REZxfdblJoDCoMjo18wK
	2LX94+bOmOMNEarlEJ82JM9Z2s0ewYu5oEflx5r8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ddbdcc72-1cc75651-5b16-43e0-97fa-50dc74d151e4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1ffa1b647d8ee4d14463ea27ba1656de20d9969e474c13a0a09e24eeda6bfd8e
Date: Fri, 8 Jul 2022 12:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657282612
