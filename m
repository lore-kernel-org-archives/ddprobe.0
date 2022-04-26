Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C63B7E
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 14:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650982078;
	h=To:Subject:From:Message-Id:Date;
	bh=FxDEJrG5qX/9tsZfp4eZYHrXxuY8i7na35PvlWYMr4E=;
	b=RANw/8wyac5QYvY7bqEM9Gq5ZCwgW/EN4VDHv88VFP5xOmJS3Yow25V1CHTbMxPx
	h/snI0oda7kJImioFAx9oHJEkwIGrYr5C7hvdeUhNAm3YO1SIATL3pLZUkKY7WSJuXg
	BGF8OxlsxsjTymkOIz+1puWKuRxQmidzJ+8UC/i4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650982078;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FxDEJrG5qX/9tsZfp4eZYHrXxuY8i7na35PvlWYMr4E=;
	b=W4/fr7D8NnlyJurdvAdzLKZO9sEYeeZA0KmV1cuuFivAeNHgRZPeYbBDU9eMANqP
	jh5XYR/A/tulFSvXpN3BnylcrvCq2LcK7dIphS2ieEoWu0deh4Dwi/e2pP8EgBMmbw5
	V0u07I+pxQxlj8J5aCTAVOXyGJxtPr1Z3rF3vf04=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018066334771-d7492574-961f-492d-9dee-4b684af7c96c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f57e739f7b7fd58b61a7baea2c3c11463c7b99295d1f1a77e5c7556ff0ab2fc3
Date: Tue, 26 Apr 2022 14:07:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650982078
