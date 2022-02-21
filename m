Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84CAD33F4
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 21:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645479984;
	h=To:Subject:From:Message-Id:Date;
	bh=CSWvGnUnfBiSrtHwJIDH2IVkHc1KBL3RgpkJsyapNGs=;
	b=DjNhbBLwZy1TqbPPMAnJjcyPFn6GLgYoJbiSdEUWDtWOJOU1PFviAZFaykvWX2Ez
	h4wwyBd/NG/3bTAqTCvOSlajdRlt4njvF8gxr/jCUBZEOqyGuN/giOahfwpvMh8+pQE
	VGoFC/3HXBKjpXR05l+KfhBu+oRLqjDumEpEEUNs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645479984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CSWvGnUnfBiSrtHwJIDH2IVkHc1KBL3RgpkJsyapNGs=;
	b=WaIIJGekUgc+jbbPDB12D6mCF6TyLXR6y85YFz91Cfh8dPIzFee+KnfnlYCklJfk
	vnjEC9orQGcUnXec8AFZpBL8SALaPQiBL2Uw+OxftZJu4GR5WysXNeZ6z9UH/GwEAO1
	rAp/P+HxHFZZX5rz2Sub7K2GjVfI37etDk4P1z58=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1e3ffe76-806b6d31-b428-437a-a26b-bb9696cf0355-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6996a30f9d73f927b5af694212fe8cb553dfbc688244788b0d6817b481e56ab7
Date: Mon, 21 Feb 2022 21:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645479984
