Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11EF47A
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 02:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647915385;
	h=To:Subject:From:Message-Id:Date;
	bh=KkgDru+sz/iUj42vnCyOQF/V10rR2CldBeRSGV0h2Ws=;
	b=fn3noe92lO0SZR3JPKmyGOgP1Qb1ydtx3a+4fQpFUCeI44h2bBLi7nqcHdCFz2+B
	vQ9GXS3/U8ZU9CQgvSUSMN6+rDU2dDI+J8wcDXhLb5ZRIlLa082kqvgSDTlV66oUVw6
	T7UrvJ9cu4qYY7tl0FtigEl/qP+KdJ8brHe1bh8k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647915385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KkgDru+sz/iUj42vnCyOQF/V10rR2CldBeRSGV0h2Ws=;
	b=IC1vsnwK/MPLKpnBjLrCW4ilzHE/mI6+cs/0XU8W26YvcKLtq/+d4cIPzAg0728h
	guMvcdTZBV42ypO+oLL4hQe5P72MHKdk4/N2mcxg+/txPTIJJGvrupQYewdZXAMv3dD
	0EEAlbk8eGRysHImwmCBTpwIDBe8GHS+6icy19is=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017faf693f9e-03bfbf56-6dab-4526-a631-6a1027d35df5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ea2d23b2b700b92bb8fc0d16abb399a54060d753b1e144dbac78ff611ea28fc3
Date: Tue, 22 Mar 2022 02:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647915384
