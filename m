Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62AD91FB7
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 02:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646620584;
	h=To:Subject:From:Message-Id:Date;
	bh=yorEYL2zJKh5ynd4RQW4yS7r2zw8tbqHRQ9fMMuYbf0=;
	b=DiXCZMehhI6z4NEjqEp62MMNC03k0SOmtzi/NUe1PwQ5sdM9tNGRieWoQhITVM12
	DhqGMeCGzOdLN3tDlNh/+u7AAnSbzd3TynVhwEQdDhnLiZU1p9KrL27Hv23l7x9dtMw
	5d5ae8XAx6wFr5XIBS6+nVD1O9vyBMSZAYviil3c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646620584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yorEYL2zJKh5ynd4RQW4yS7r2zw8tbqHRQ9fMMuYbf0=;
	b=VBT2I0c/HDj0Z7bVpDYkE4egeUIFjktlOmUrWp+scCB4/8FHMdaz6x+kqkw80bV1
	l3tqiKon8hv2SF2OYf/RrfQAjmHjTkJEDzAGty4MtDGiudfXI2zKPbLwUc2GoQT4M5K
	W7DYKwJy8rKFGFSmV3AecFYe1hxYLSijAu71FSYE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f623c2b08-602a7b7d-a042-4eb2-9696-df13aea1c121-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 68446c0bab33a34225a7ae47c7df387bb5fd40b0c9956bcd0107d88b09af24b9
Date: Mon, 7 Mar 2022 02:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646620584
