Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0223415A6
	for <ddprobe@lists.linux.dev>; Wed, 11 May 2022 10:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652265779;
	h=To:Subject:From:Message-Id:Date;
	bh=HJZ2/VSEhBuzLA07KApBHZv/CRJtEUDY3msBtfOCsxI=;
	b=H9bO9PQ59P+NFLKR9mV/tkOJUeQH/NaywygBgjzFaKZBoUtVINJ0uPTzrddytZVA
	EsRBAnV3R9Dt/0S4eX0Ktag+NbrRU4Di6BCYe+ut3R9vpKkm+fUTePTVWN23nvCqKbS
	/GAa52KL4QYpZTKWQKlQyUpOP9/fUUIYjzsv5ZVI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652265779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HJZ2/VSEhBuzLA07KApBHZv/CRJtEUDY3msBtfOCsxI=;
	b=UwA7dB+rpRywhjzjo1VBcopW2iYvSzwej8Qd9yxOu0WyfPS1vI2tW9UjnuxQmQCh
	Sc/ARAMOuTSQKYCqpQz4PAKt+gPWa8kDgqjq1wp1JozVPQ+O3m9yH8K6J+3CcPnVQto
	Bso2KqecdzhRblQR5I6OtRCH925DXCoLq+HS7i5I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b2b7006e-235980e9-3780-4e2d-9d78-5f506ecadae9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: baec055644dfad533aa48d1a63d202a8ef4004972705836f593e523827e6c6e2
Date: Wed, 11 May 2022 10:42:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.11-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652265779
