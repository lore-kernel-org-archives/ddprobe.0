Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 995237E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 05:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646976085;
	h=To:Subject:From:Message-Id:Date;
	bh=CL76KJ548UlfIChRMxXsGMk3Znqr1c1RWf7Q029AZPQ=;
	b=hkTBPgy4FNWX8UXl2uMvTUYwDYqb7RNHHTIsr3tmaT1aP9htHlQOEKTpOa4tUKwk
	kNpI0VeGMuYvJ5+Zf/zpdg+WoEQlLEvXSAjPYuE1iRlRU+Phm8vaykGilCQhUMdNgNU
	DPJCZraY3BFNiy/VJeyR3dNSDszD6RhKhJFC3B54=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646976085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CL76KJ548UlfIChRMxXsGMk3Znqr1c1RWf7Q029AZPQ=;
	b=Ny6fd/Tk8jsSRgUn7vrKCcWsxKhN/eLueNIbD0ZK0cKJRNliHBiEMLBi8d/k4YMX
	AZ4eYJA/37MgYrVVOhR4prOGM/q/cfWjWNkK7OSo4NLr1RBZw2UOia9UGHsP7K3hgah
	mEyZfJxqW9CWVvI5/fm1CTCT/b+aBP59yJHUKU6w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f776cab3a-18666f0f-a7e2-493b-87a3-ef915c605701-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fc276a22efa5be4b952b90c3360ce9d8210e6311e3cbc189bc996147b0829476
Date: Fri, 11 Mar 2022 05:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646976084
