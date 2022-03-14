Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C81D67469
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 23:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647302184;
	h=To:Subject:From:Message-Id:Date;
	bh=99V0IuG7lvFbAYdhJzFIjNBN2tdxQwKlLJy8xO1FN4c=;
	b=GpFRITsvE27D3mFwQX7nTH2yWl2Y0y5qQTYVCsA5UF3lcMdaOUy5wJcQn8GjeHVW
	g47SfJpecEcZBQwqnIkCmobSjqL/TiE8KtUOqDvBg2qwL0/BmmRUBK/Hk0ZaHBfys4q
	kljQZMs/QBIP3hVbcCouxWvAbek1h1SntmY2NZOo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647302184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=99V0IuG7lvFbAYdhJzFIjNBN2tdxQwKlLJy8xO1FN4c=;
	b=MpITvQwsOVmBQboEpYDBkrkr+xpjFnJdZ6LztXS9SzNeCfwD622SjRJdIbTHa2/H
	H1LC46+Emu004gNgNFbv72luTedTYULq8IAlp30XubElMy5H8yce6yLjlFAV3cKLdEr
	IuJsxG9QeLEzPYuxvdA9ntBlM+JG/ykBxe5WeydA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8adc8f50-8ab796da-0928-459d-a4a5-ed8436246662-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ccc34a02be9d0a0e184139df65b04cd53c9022219da86ba37cbb46cbb1e6fa95
Date: Mon, 14 Mar 2022 23:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647302184
