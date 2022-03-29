Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBED220F4
	for <ddprobe@lists.linux.dev>; Tue, 29 Mar 2022 05:00:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648530058;
	h=To:Subject:From:Message-Id:Date;
	bh=qdfoKSPuUM78ZaJGyffPy1IYPIzEkaok+ndg704FyNk=;
	b=awOSFzkWlJfYmUAZl5TOHXzAcd/W1wGFQml4oxAs5+roPApSAiPp2uj0MeGQBcu2
	8NO5+5180Vjny5NVGyuXWKNQqRbSjF3MplUaUOD2oqpiPNBGOFk+jjgmkz497h68qCH
	U71dXZNLZ/V5IaO+bd/MqI6v+ioImUXXRwf5gOS8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648530058;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qdfoKSPuUM78ZaJGyffPy1IYPIzEkaok+ndg704FyNk=;
	b=WfgndCTAhmNEgwetzYOT+2PKKsAmdhKBX/uyANvEzlZF73HWXg9M1JQbaMH37pvc
	csEvm8CIclNABjIPFWB7OdjF3nazYTZiEPQQqFfgTaTRhtz/JBAIvvEoLg0xsI5/l7v
	mtxh49wfDYwiEsbougs6nk5LF5Mrh955jxGCQYug=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd40c6bea-a8d0055d-a146-4b34-bf13-e1fe3d9a08d7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f9f4998bc752757a28898d37d43bacecda4ba69a90694df1fde465016dac9797
Date: Tue, 29 Mar 2022 05:00:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.29-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648530058
