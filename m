Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2A5664C
	for <ddprobe@lists.linux.dev>; Mon, 18 Apr 2022 04:18:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650255538;
	h=To:Subject:From:Message-Id:Date;
	bh=KaspMT+0R2GbFq90ATHFgMYYSKe4CzihktWLUncH52Q=;
	b=Z8ui+5qJgKjAHAZMeCwtLCtbPpIGACrTY2WK7fi3gdODHUwXkKF2onwP5qu+BLxH
	ab0SC4WBSA1kreJ251sftVfMZVoLOhCR5EHRG55rcF6TA9epfEr/MXIrhkzbQHoWQOg
	HdtCiJSutZ8z5ylObO1RrUVZHG9Mqvf4N0Uhlqys=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650255538;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KaspMT+0R2GbFq90ATHFgMYYSKe4CzihktWLUncH52Q=;
	b=TV8E5jSsIPf9Cp0IRuDcOCLhiMatHkdPEvwoQbKhHoFqOem9Es3nMrMnWkWhlHwv
	HmBXnWlGA2rKbJXtzG6YN+cTNJEy9rZlCxea9vTDygPRaYlWx/nUC8muCSIxKGHYdUm
	c6Ie+F0kosrOHqj1Arzmk8ee3FX3bBKL9qjNa3BI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101803ae5284b-d38b4006-e0c5-4a7d-b1dc-5ad63adc6dd1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4c54d820cdec61ac3132ae614be7ef10e933179eaca5c5ff466f32c123eec9ff
Date: Mon, 18 Apr 2022 04:18:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650255538
