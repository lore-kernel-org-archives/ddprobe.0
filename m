Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27CC97B
	for <ddprobe@lists.linux.dev>; Thu, 28 Apr 2022 05:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651123378;
	h=To:Subject:From:Message-Id:Date;
	bh=kDKUBoAzFUiRSTs+EdFGwYfFaPS3gPgxCbNJx/SMxbc=;
	b=Fu68LROBFrefo9y07Pl2rXXAL/EvxmQz/G4E0nywTajvp1VtcOgyKhyQp3YEiiaX
	mzyik38m2X1GolLf3pyVFLKNvf/kFH/nYzks8UMQI1gAy750XyM4XTUAvYst1zvMHu4
	M2+X+ISU8zejN+YvMYwE8wSqcbPe2uvspPvwvWdU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651123378;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kDKUBoAzFUiRSTs+EdFGwYfFaPS3gPgxCbNJx/SMxbc=;
	b=NFPoWYMCScjPj4u+0MfRIP5sgScIJ4iTx0vYovTd+NSe0qgkf9cu68j0VPhogVNF
	z1OlUdZFqwxUGVUhNXTgo88ovRRcru2iURlOqu9xdvFt/ieEaXCq63zoGukuBu6MUuv
	tCn6MhJSXA7yyiBqSO8B1OXL5M/VkNcnTC657DjA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806e9f5887-aefb9d09-5b28-4a4d-bddc-06f7c17d11ac-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e5837dfa0f983e9d1af49b897c29ec4ee67fd711ab687c634eb04587e5a9fea5
Date: Thu, 28 Apr 2022 05:22:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.28-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651123378
