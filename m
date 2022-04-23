Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC3697A
	for <ddprobe@lists.linux.dev>; Sat, 23 Apr 2022 11:57:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650715078;
	h=To:Subject:From:Message-Id:Date;
	bh=j3XL8nmBQRxYvUZxxQjQ8pBPeqygQ0XFEvtOP/KUEyc=;
	b=fKd2twJqY9B1gVamsjOP3fOVQYbYIp1Rtr3RtiTsivDwKyTuMAiq/McLNwHUJA5U
	knYG8wyV5ruVEkd+OgRbpU5bnMWru5cff6cUQ4gArDBJQ5v3nWbiPlYzphE9IC8/rxb
	tESphk+29WmFv/P6y3Lk2w3ESk4VYyY8leVdnzhY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650715078;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=j3XL8nmBQRxYvUZxxQjQ8pBPeqygQ0XFEvtOP/KUEyc=;
	b=fT4eIKb3n2faaS3oMrw44/nJ87RwwrZRIjZVWQvLg/+wW1j7GyzxrqfpsX7dr0KU
	NlhIa5VnYTErkLKaDoSX2oGag/8IKn8/8dZYHwwn62KNhH9A7vzMFGo4aDcozDnPp3K
	AR5ig5RzGdQF20EFBfE0ADVUSaoJX1qvvjbUIYMY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018056492e54-15badaed-c4f6-41ae-9937-866f4dcc4c59-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 953b72a77bceda3458851a1f5ec1bbf0a42ff80065704377b902f1b01789be81
Date: Sat, 23 Apr 2022 11:57:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.23-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650715078
