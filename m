Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12B8C7B
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 02:27:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649989678;
	h=To:Subject:From:Message-Id:Date;
	bh=iiqqdSMdmHJQU0OPeJpnDCSlFy3BV5OlLN28t08z+gg=;
	b=SHgTAZpV1uJ/PUFqamU7ilGsW/9laVgE+7kTH2vPT6o+AobsFp2NaoDH3w5TAsGt
	9pLZHkFYGiCGVSZEgy8xIj0B3ymoMUAbp/Sup/xbK8bpb13xzfWEP4DxubcMDUbZ7Bb
	2DVr0oJRWh13qbhf/c8Kj6ba/eyq573B6QcEazws=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649989678;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iiqqdSMdmHJQU0OPeJpnDCSlFy3BV5OlLN28t08z+gg=;
	b=UzDpsFZLhSTLy6Y0rg2aqDiR/IUZbQ8mgEDHoiIzfSraQJpoMmdbJY9HriMBBj7v
	esX7LFLDmtDEIXxSbNOkP0o6wn7gs7RRJc+ie21vzpGOoZQmHg0MGTUqzv+0hPQ4+Li
	DWWj1jyfk08kw1DuSc5xLXXHlkN7Pm/HgDgWtjLI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802b0c74c0-9930c54b-1fa5-4bb3-ab8a-151c8c41259b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bd65b2906686be91f57f432dd54e56b09a1a4a05f7cc83c702e66c55e590b897
Date: Fri, 15 Apr 2022 02:27:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649989678
