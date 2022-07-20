Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 197907465
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 19:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658346412;
	h=To:Subject:From:Message-Id:Date;
	bh=CVVUqig6WeQUFEJCVFYN1BleAevCbvIoo1OjZQ5DBFY=;
	b=YFy4OWzqOx+xrFs+4hZK9zR5g7NDF+KvFhflRhSubR4mV4NyaWsy4QwBWojfxQw+
	3AuDYoPgx/nuLpRf9M1jD8VCO91yLmIDEcp1RHZbNOlXNwJH71hNzbgh4pWGgvo5txU
	NIExE70MFNGVMLs1SexF5Tanm9LgdWN6KbvAJElw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658346412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CVVUqig6WeQUFEJCVFYN1BleAevCbvIoo1OjZQ5DBFY=;
	b=J1NfbalJlqvdtRA+byy+kMxi9s228fJkJBblF+7gLONHB/5Ht7Y3fPEAf89Q6ph0
	oPFRuNiAIJ1h04bzpzeR+/x+OqQ7vN23rIEFUva9pNVOU8S3aLgVAeabATzbt+4/qWj
	Qz1sBUuFgknLZxzbouFnO3vwq6RO/66UeURJukR0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821d261922-f8fca52a-f842-4034-9c52-f10512f7f66d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a7dabbb76d7f6d04ef3521a8ae5c92d432931818a17aa7f35b2f58cdbb6a5006
Date: Wed, 20 Jul 2022 19:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658346412
