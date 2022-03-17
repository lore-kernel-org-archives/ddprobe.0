Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EB7B4378
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 15:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647529585;
	h=To:Subject:From:Message-Id:Date;
	bh=1KzOCqYjCw32nsTBn2aukvmROVokT4356GURPESIvS8=;
	b=l6r2Uv/EUZOErpiDytJR5ZoUwHLHryFKODdxnaSS4YT6/GFKPogQaVXVb9VXgFZk
	FgaQ7raVyD12/PD4f6GaK9kh6C3DAUk+kbBhOoFnNZc5Vw3RL5/mSOH8UfWfCNwEsuU
	tUSxwSQtcwc5HLuFu3gmFVLyTHLPO97UMG/JPsJM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647529585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1KzOCqYjCw32nsTBn2aukvmROVokT4356GURPESIvS8=;
	b=CbpNz/Er0MkComacceXESNeSGun3lN0KMaAAQ3vrij4vYYmj4rNe0w8omCN05Joz
	yceNiaHRUQmlB0hOA+5Yh3Ffja3GqA7k5MUk8IZHSoUG3hYRAyv7RFLiBYX0Axk2oSR
	x6tzK9UtC8b702yp7FDYpY4B5Ls0aoMtq3lNQFtE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f986a6919-29f8850c-d783-451f-abf8-5f74045b2ff5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5ffd346c4efcc5a569a75a1f62f72eed114f649b0b3eed28cbbfae508a3eb3f2
Date: Thu, 17 Mar 2022 15:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647529584
