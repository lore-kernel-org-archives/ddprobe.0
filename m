Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0400F7E
	for <ddprobe@lists.linux.dev>; Sun,  8 May 2022 11:25:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652009158;
	h=To:Subject:From:Message-Id:Date;
	bh=oJfT7B7rmeiYdjTjYMb93VZeJtgGeRXlnicvah+ScZU=;
	b=LdGJV49H5C9I9ZfFFkQA3r5C8A2R3no7aglFRY2RXzG5VqsDk5AH1jwEds97THnJ
	CC2enQaCHEHkQ06AgzlyeycLReBI9JGB9M/GQ4gsMjg74P+psQC3gcKq7rPkgfgepaa
	P4qQ0i+bCy0z5xoiegrJn2dNTOnEkefSnnkViycw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652009158;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oJfT7B7rmeiYdjTjYMb93VZeJtgGeRXlnicvah+ScZU=;
	b=dw3Mezg9FJ1KUjMcQwOoQZc4UypoXPfiqxo7dh8z73PGSfATGgVoLxl6kRnpenIu
	HUlesXQVAKpKRDxPQLWF1yjyUCY9yr9Q/vhWHSpoPIGSRuiy4lV4KwgJ96k3/Kj7cMa
	QNoHgJlzsx62a04FuCdVCCWtBpCsQc0mX+gk8mA4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a36b469e-6c3e96c5-cfcf-41b4-a9bc-a4838cd92b53-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e742a04d215b1d2c77b9a763f3fedead59efdc9f72d2122662ebb1120ca8d600
Date: Sun, 8 May 2022 11:25:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.08-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652009158
