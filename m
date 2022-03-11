Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 850517E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 01:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646963185;
	h=To:Subject:From:Message-Id:Date;
	bh=p5eNRtIa/1KiXTK3XOhxspWRZtup2b8x19sHOtUjiXQ=;
	b=G4kL1f/UMstTJii1aJ84f9AA6ggvpQCG7qMGR+bvhW+Dl6a29KTdXRx2TjhLJfPK
	0yGGNq1X3hN0Alb/dCd7XoS52Y3BKed06mu5dwbnRVwP3m6p/ZdeT55l7Bp6efL7zjn
	nlkk3Yx08ibpacNIS3SfYw5ViMACnpb6t5HibJ+k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646963185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=p5eNRtIa/1KiXTK3XOhxspWRZtup2b8x19sHOtUjiXQ=;
	b=kWrAII7M9zFZ/o9H3JviYZxeQ/RCuEQ2G9oOk47cXHKBhpR05um1T7dcedaKoJUa
	gcE3runsM+UE/IIB9UeO2MhdzmpPnvMYHoj3t8UkxFWmigFyxsyL8ZYGiqBjVeTTU5s
	IiQvqTiaOmdtucw58XG1viKbiBMIq153rpFiOlfc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f76a7d545-5a1e7b83-8b31-460b-bc65-b1055d58b4fa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c1ac258b11744029edd8b6d566a310d6267f5dbd38b473220f00ebc68cfa9642
Date: Fri, 11 Mar 2022 01:46:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646963184
