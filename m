Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 016E9C9D
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 20:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645648585;
	h=To:Subject:From:Message-Id:Date;
	bh=m/js9UiYKR65Z8W7oTsICEVUAfuURNLpk5F92gcKJTA=;
	b=Z7DKUL4yT4AKfeQteJATG89AZbZ7Y9zqzdag9/pqvzC08k7JRjXSTVHR7cLEPNbA
	dh1SqTj0gaZsKxSbkMyL1mT2nB6POJ0DtJYWyDBhLPgobDNjrgA4z7tGYNjOkexWWbv
	PmLh0jA8bcjqyBeGU5GNoBHQ+W2Ny/IybNM0We6U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645648585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=m/js9UiYKR65Z8W7oTsICEVUAfuURNLpk5F92gcKJTA=;
	b=PkViizL4EeelpJw/swBq2cN5D2KJRT4LLj+8/s9cnSxVj6iNMNTCLXWU7lCvvtH2
	QW/epevuvs22ugrpzltaZ6puW1IOe2a35XIjcoeSh9fYGI8S3tMh/+XafbIA0qZpiCQ
	/RcItt6ncnbeN8Jm1vULfCQrCWJFHBSWk4Pz5Vek=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f284ca074-5f4d51f2-78e5-426b-a8d2-cb2ef4423ccf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8442d957f0059f76f984e9832484d3b617866e0183590c64ad8b93a14a7b9d8e
Date: Wed, 23 Feb 2022 20:36:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645648584
