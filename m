Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61A2615B4
	for <ddprobe@lists.linux.dev>; Wed, 11 May 2022 02:49:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652237339;
	h=To:Subject:From:Message-Id:Date;
	bh=HsP1QC61ezJy5v6Ne7E7X4oRSyaLsXoZ7/zCh9JGHMA=;
	b=bu8RKhVbGTQdSuXod2vUOsiyhwQv/81PdiQ7mRxgZQ8puvv2l/kBpJ/zFF0II/P/
	2d6pbbTw9aQ80dU+2fXSajiJkAeuW/31x03QjdadaaWW5A8iPcm39A0vfjn/4dshlmG
	iQ5VjLwXqyTBD7STd4t84Ao/cixGtCUjuWsG0chs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652237339;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HsP1QC61ezJy5v6Ne7E7X4oRSyaLsXoZ7/zCh9JGHMA=;
	b=Z4JzQr11qiyC1nESEp2WBGFHMUIyaaAFPjrhX7tWnWEtfsNveVg0C369rl53wHAV
	nGUjlTu8wiQVEcsKLv7qNqhEmrdYWkBEzSrvgtp4Yob0BIKPkgKrJ5wQgK16ffiR75X
	u0NDqEvbgzwCAkj6ndDyg0w5rw5HXbIrkUaoaXoE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b1050abb-71f6e713-abb4-4bf2-b6db-c6bf4c74da5c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 28e6f12e2f643f06fddf68b1a926eb2ecafef66fccfcab3161527d327a93487b
Date: Wed, 11 May 2022 02:48:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.11-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652237339
