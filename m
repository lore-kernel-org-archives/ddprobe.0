Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 008B33200
	for <ddprobe@lists.linux.dev>; Mon,  4 Apr 2022 19:04:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649099098;
	h=To:Subject:From:Message-Id:Date;
	bh=8hSTCK7ZPd03UcLewGaLwoupsNxuj80Jsp8wYO9xsSw=;
	b=Ra7YtSQ2jFIMXuebZcK5LFqF8X2dIv9poacJLvUyUFs2n1K5iMEnwO9M4NPn2qvx
	kisYSPDwrmz3Qv7xcXpLio7mqIkqOKmS3K9X3NWYcoCj0hDDv8R2Pf+sxnDVRUGRnqe
	+BC5o3yxOk8ceZx8G3xF6M0z4hay27Oc4CuKO0oM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649099098;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8hSTCK7ZPd03UcLewGaLwoupsNxuj80Jsp8wYO9xsSw=;
	b=kZACkB2+rsHsWiasjGNj+Yo6Pk8tU/lqhlHwMnvsaxp+0oueEADPsprZl3K3qsn0
	I+IosqFJowiNNnyFntEd7pmbHr06ZP3scwR4TivLUDb7bKx1qZ8ESoqW7ggH+elBiVP
	WZjUkJtj0Z9hQ5KwzTvVt1n9a3F5LLtwDIAxUfFk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff5f7489d-0ad228bc-e80e-478f-950d-e1c77043449c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 50ecb1ee8ebcd2c0976800c0ce6acb91b89d4f4f750ade4aba56ab2f1d27f1cd
Date: Mon, 4 Apr 2022 19:04:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.04-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649099098
