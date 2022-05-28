Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F085F1FA5
	for <ddprobe@lists.linux.dev>; Sat, 28 May 2022 09:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653728519;
	h=To:Subject:From:Message-Id:Date;
	bh=n1lrSv+FC7BD+aTHVgSb0Xy+bPzF0ER+6GctjiBE2XE=;
	b=ezCnFHUWBYHVwRvk8Z+stBS3nf1T3zADDCJ0T9b7a7LJcD9PxVd6fRigJaH7Czm7
	HfBIzHu+K9snIysEgy6KJqeVuzLb2StusrdhrVQFdj8gT+PtgosxN2p0NJffbsg7/DU
	J4tzn4k3ge1mCXEAFmG1uVwD+6HpN/Xfb7rZnnhk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653728519;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=n1lrSv+FC7BD+aTHVgSb0Xy+bPzF0ER+6GctjiBE2XE=;
	b=AL+22c7xHdE+x9xZSjc8saGuqd7dBx2KgdmN1HOg+AE7kA8vN1qHet53BYS2+aXg
	gw5pUMbRWyVL7H3WsFHn7K0BwCDZUYh/TcFtjJDtIZ8ujcp8l9HPV2c1Q2S90FMfugS
	eZXVrOoai66fokH1Y1xo+zD7RIlhbgm/tPJ/cHzU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018109e6a455-dc01caa6-066d-49ec-8582-511ae52fc55f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 60d92bd49addf38c703f152168432a0eb5dfe66a724040081b71bd818ebef8fb
Date: Sat, 28 May 2022 09:01:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.28-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653728519
