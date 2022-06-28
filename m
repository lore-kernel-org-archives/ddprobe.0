Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20EDC624
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 08:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656404212;
	h=To:Subject:From:Message-Id:Date;
	bh=H6H5Io+DPzBJDP2jiv9yuzTIKGQaP/A4Qb6niHOHiz4=;
	b=hOSdCfRgsZeRgTgo3twKakS8CqSbCT6nuv70Il5hzVQqvPeUUqgPbf9DGmQqdez9
	6o1hG11cNs4Wg3jO7ZyPohUWmCDGn4Ko3kamXZUbj9tzCAmhj/nyHdZ7/gPncbBLJeY
	c//fciEJDCDuIK4U/U8Lj8cu/HUe0+KG97TwN0oE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656404212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=H6H5Io+DPzBJDP2jiv9yuzTIKGQaP/A4Qb6niHOHiz4=;
	b=ZprJQmmIWOvx8FGogkFlBM2hkfDCNilYCf3pRewWCm5reeLgPRt4B7WAY2qPSsDy
	fiO6NumImfe8A1AkZaJpwpd5y5vrQjmu5AW4okdoyNeCXHAi6Ybwpv9hnJx9C6YTiEO
	UmtkWwinM94FYA290iefV1/pwG/VEeSzoIg9sTwI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a9627a54-08353c90-5b58-4ace-9e2e-ed73b20b9c9d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 21535e70536c7b90d92d6582dad27c1b058549c101a62168cb04c9cd022cb476
Date: Tue, 28 Jun 2022 08:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656404212
