Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14FE31852
	for <ddprobe@lists.linux.dev>; Sat, 30 Apr 2022 05:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651295818;
	h=To:Subject:From:Message-Id:Date;
	bh=QdD307id8bjrOJprP1KvvfnQf7ASUciO6iMDTpYMc8o=;
	b=jqVsBzt41LPcmagXhLOrdsu1OeqA/de2jhwqqQWPqFvWSbrOO/nDsZLc21snGWlI
	qifPQu+AkCoAQ++j5tO8xd3iv4qhEniykH5nsr8+mvCD3Zi3/uoITSxqOEocfH71Io2
	WElfubjpDI+GUzY0O/FKzfSVH1gv/HSDj/1FkbkE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651295818;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QdD307id8bjrOJprP1KvvfnQf7ASUciO6iMDTpYMc8o=;
	b=K++wba2eDfzV2PegkYRNLfcZKNBEcKy/CgvBNA4Y3Dgjw2eS3suk79VenimuaOzU
	rXipBysUJy9MpW/QT6TG8Mr1+lLz9BL2XAs8BZ2kgBFvwaTWDNZUr68EEtB/w2Yn8MI
	bXOCu1RTBQGA/IBk5yb3sPAajQlta2hZHS22pNPc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018078e6922f-a135a60d-3b08-4f4a-ab15-02ddfbb96bcc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cb84c1afbdfbc853603b27836c5e8e719714e409588818259c51081b116a071a
Date: Sat, 30 Apr 2022 05:16:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.30-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651295818
