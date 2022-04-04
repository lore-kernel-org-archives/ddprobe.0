Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA9D17A
	for <ddprobe@lists.linux.dev>; Mon,  4 Apr 2022 23:29:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649114998;
	h=To:Subject:From:Message-Id:Date;
	bh=SEiUVBaqjtKEoSLfbJxGFWrv+VZnLvdZK6ak0OX9RPI=;
	b=aAddYalVHebUSRBL9eUyhcG2HbWMbqlxxl4Nc2EABfJRdWIV6ALFyNOrZuLEk9HU
	lvsP8++v9LQSZ9C2OIukoyjOaNmNIJkPvnxgNk31YF+ISRSkdwNMmYp9ZG/B+5jDdIE
	yZ/MARSJXHaVg8xJcTmuGkxTLdGAQbba4Ne8Sm6o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649114998;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SEiUVBaqjtKEoSLfbJxGFWrv+VZnLvdZK6ak0OX9RPI=;
	b=PNfupe2Ks7fUU56XzNBOyMOzzjSsmGVEmph6sM4440WJLeCpFlN1XBk81/IogHml
	YVPMMMoWzgWilC5vYnFvykGTiVa50DAHeEABEy20UJRJtWuX9bOiDgPSYE2XACq2jps
	CPIXKp7T3dzL9Mey4VPFekuBDapOvy6b3k1nHdW8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff6e9e5d0-7bcc2212-0115-4ba2-8565-b0d3bd6927a5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 35f087fbb8620912431764d98d0a77976614864a4b65381fec5eb3d318cd0f91
Date: Mon, 4 Apr 2022 23:29:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.04-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649114998
