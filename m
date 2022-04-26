Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECCD6363
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 03:35:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650944158;
	h=To:Subject:From:Message-Id:Date;
	bh=syNDHseq3BCORuQhF1riv6A+YFojl3X3BH7a6Fslww8=;
	b=KXrWgiNrY4oQkmgEPA3zkPsTwY7elUNRToknWAtrLG+3V0vzlAZfuuVhkL5IPkg9
	55nENaCIa66x8s3hSx2IN3zldyZTLv0VG9jgP0XhhrJBOo8uqasVBMLif+JwhkZQUlx
	1e4YEkCoHNuo/linrdfgV69pV7SHSvYnKkeNLdcs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650944158;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=syNDHseq3BCORuQhF1riv6A+YFojl3X3BH7a6Fslww8=;
	b=OCCg9z8ooi+shzvZohU2WAYMM0d+7NCgzrUOIn0qZJdXiiNBuc3E2v+p6wWyUzB4
	2Vc4DK3Kf7kYzUS3EJKpJLxBMNGm796y9QMAuzgzURtI/gMvSpxLgHuANAP+ZUiqrtz
	8dYcF2bZxb53Ml8x1YwHljFMIspSYC51JFZPWu6Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018063f0aa56-a5730d7f-e2fe-4cfb-8dbc-cc131c9b9d9e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fe3750fc2d38bf54b105850c9d6a24e96dd5242b2b78a39c08bf14691b72b505
Date: Tue, 26 Apr 2022 03:35:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650944158
