Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0832B2F50
	for <ddprobe@lists.linux.dev>; Tue, 31 May 2022 15:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654011779;
	h=To:Subject:From:Message-Id:Date;
	bh=MS47CVtz9/LtSmIH5btVWympLJRysL+ngjD39D4PQQI=;
	b=gZnef/nWl35sTzd7sBT8I60YQR6fhwSZ99u9Lq4rz7gl1mbeLntMS/yVhc+UYVW+
	kNhm1qGcRn8wGtE3V5aRDwHe0aEDaNW5mi14Q3yvL2u/HYCC/GuMaXPHdEvVFziO0lZ
	h6z1BEfgYI/Gw0Xl6HCNtLeBQUg/8AcplJIpklBo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654011779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MS47CVtz9/LtSmIH5btVWympLJRysL+ngjD39D4PQQI=;
	b=YOM1ylHViNHJyJghGOzEbYFQ67V69d/0SsSak+BRKMgtugzP010Ek/Zts8qRmcZD
	jeFgoC/GQCrDAj05ppN7Rjcov9ItXHuzBvdvYZ8exbJJxFud06nNbpWwlkfOuX2o4J3
	vS9R8dXG6P0bDY8DlyJetcpmkqSyOr9QvK8Fuhd0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811ac8d895-88d30e77-68a2-4fb9-9e35-19f526b79a8d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6b8c732bce3b716ed835cadbeca741227a59e79a887458e737b62f07e6229c07
Date: Tue, 31 May 2022 15:42:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.31-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654011779
