Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D3442FAE
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 18:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645210585;
	h=To:Subject:From:Message-Id:Date;
	bh=ImddQYZ2Ap8Ix1ABlnNE113143PyGhrYU+4MMPgKX+k=;
	b=ejEmWg9tQCP7UnujRVIKj1GGJGBtufExNNcqnUfDkA2WfC84MjV1gBh+BplqmRQq
	pdDQw2USJtqd37usdxYmUfJ/HjNknTJONm6NfeRsmpuCOfgiiCIFsaFcuxbe/lbglo0
	KZuH4JutP4dov6dHA8gnx1R5UV6dR8zHcQQgk5Wc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645210585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ImddQYZ2Ap8Ix1ABlnNE113143PyGhrYU+4MMPgKX+k=;
	b=Z1y++hgQv04druQltnKuC1mxuxXr1te7arHynXsAY2e6IoOd2+9oAH0Cq1d6S4CT
	L/+1RxhTNZGQpW3yQxPC27x1h5lNLskWHmXsy20MPy6gW7ljBnkKIKLm1wudm2bvFkD
	0Kiu6jYJadOCOJiibqqLR8re8GKxtFw1kExfub+0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0e3146e9-974e83d5-82bf-4f59-bded-705b8dec2e4e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1c09d80428fc806bbc250cba7a7ea4e00e8894f3b156f909cf2fddcc4b408f69
Date: Fri, 18 Feb 2022 18:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645210584
