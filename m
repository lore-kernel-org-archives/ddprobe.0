Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4E9E7E
	for <ddprobe@lists.linux.dev>; Fri, 25 Mar 2022 23:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648251898;
	h=To:Subject:From:Message-Id:Date;
	bh=60XzQrpSEOQcQZgcN3kGBfPbWyq92gp/DiiB/xIM+i4=;
	b=O6RI6FqZXTZDsBkcN807L1qAwuQuvGWWso8gZeucVsIFAd0gRVF8q/UIY9+duu/l
	W0RRVT8YemBs+JwkBGb/OC3yzwCADktVfUiVa38uQt8ovstRalrFTFnpvdDmJIYiD5u
	3KJMvYi9vPIazztu5liccW46JnXNk3V/bL5xPvQ0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648251898;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=60XzQrpSEOQcQZgcN3kGBfPbWyq92gp/DiiB/xIM+i4=;
	b=QFzM+kjE1pK+jinU0sfeT/v7PWyvtClNopa4oQl8+KUPij1Zv/x77v0EHV3zD8/Y
	KMu14Sq0shliR+aMklOQzA+VpVOk7HtgpM5sdtjtf9ifWpCy2RgZZOlmlnAQpG4iOQR
	j1MucpdXo+HdaJCW6UxBzAhkMNDmsOWh7PYQtipo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc37809ee-748e2c4b-e3b1-42f6-a5c1-0e9b6ef6c7b2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fce1ccad0749f128e9c1e2d6f0c44cd5b3cad5b65d006de0eec6d6975a6d20d0
Date: Fri, 25 Mar 2022 23:44:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.25-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648251898
