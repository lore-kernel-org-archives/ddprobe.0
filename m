Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55B2F3D84
	for <ddprobe@lists.linux.dev>; Tue, 12 Apr 2022 00:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649721658;
	h=To:Subject:From:Message-Id:Date;
	bh=wpITch4OUi/AO1PesTG56oNUpY8M0/jJlzR13mUE1Pk=;
	b=WRY5Aa0z5VeCK80NLMq7CPHkwOIomsk8FHhaF7Ok3RnXo7xKaLE5ncfjJR7k247M
	EUryoqMQgPd/scTl2MIt1w7QwxYjrSxoQZPk9cKaks8CVG4mU5vmpYihlfA45JzrxEx
	b1nCoPUctx12awt1L5FA0p49Gj8ybzrcQeBIR8TE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649721658;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wpITch4OUi/AO1PesTG56oNUpY8M0/jJlzR13mUE1Pk=;
	b=epcU4ELYtEsIkqMHs5AKB0RdQWUyaRqMKp7jotu2lpbQTZNwIJtN9LZVq+zcxJHr
	m1T0K20B9zS5r5PvasBJo6Va5JowFX5WAhU9pVehIV79yx9oWXi1rBbtqMFQBt27iaE
	AhlzroHfjPdXJbLubn8DykQpySDQHqSFvenS6CEg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101801b12cbbf-c36b74cb-04d1-4ce7-ad31-d3beae6fbd6b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bf0e527ba0b01ee67fd11d95cd1d6e340b82a770422fd26a3108b90798158881
Date: Tue, 12 Apr 2022 00:00:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.12-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649721658
