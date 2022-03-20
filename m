Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8981E7B
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 06:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647756684;
	h=To:Subject:From:Message-Id:Date;
	bh=ED+9wldRk1SvjHwVLylBiUyQjXrPrF0qSF1T15K5yfU=;
	b=RxbswMRL1SANUlYHQ2uf8Ot/+s0zFsTqWbLGj52fz+2OXNN/1bZjNgj1kAcqzyt4
	WaLaU3c62b1h2IvWpdovYnTUpsQeYxGTOnuoH8DsnORxXgv9XxFX3dO2Uz0c18Qk034
	/0zWi2yxSeN5uNTuF1HLh5zBWUgKmlZ9v/pM1jIg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647756684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ED+9wldRk1SvjHwVLylBiUyQjXrPrF0qSF1T15K5yfU=;
	b=NgsrDMFs+RfRuiOCw/hdF7NQP2PO3DHAW8yNBYxpaTzXm+8eehD5m0wL3JIlCw6i
	m2ZsJImapWOq2zL/VbQ1IcQDDLJhkUeYG8jfBFPg0DPNdEP7Coe5aaav7WRkIpFC2hw
	sW23xsgQysZSX7eEyCauv54g/ouMZmQAxbf1+czQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa5f3add5-9ecdc396-f558-4a51-b282-7b2716f1c320-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: faaaa81222feddb570ffbe0d78df660b3545f609b57eda84841338813f666543
Date: Sun, 20 Mar 2022 06:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647756684
