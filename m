Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 652F95583
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 21:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645305385;
	h=To:Subject:From:Message-Id:Date;
	bh=OQv/1S/0BWGGVvatImHDVStj5NA5BOe0ALklpOmfTEk=;
	b=dJ3hU6Yx89oGnaacmf7O2aGDKhLa7aU+h+fBY2piXSOS8P0HYEv2q3+goOHL8XJR
	kRRtqv+yQOt9McHseCFQzUbixHyuLvZkyVnMK8b4CC0smq+sx0XLZCC71wvjpmoR3i5
	EIj+Bu29QRzE/nrHul9xcmIvIoBeFUziN+RWsNeY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645305385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OQv/1S/0BWGGVvatImHDVStj5NA5BOe0ALklpOmfTEk=;
	b=elcEqB1+e8oz6VcWFvQTvvB3KvktTvILWMF7l9b2jfGh1i8yluDENVMJGpwhCW3E
	ku3T+jW/+GmxxmfWZHnOVr1TAV3lMNObhOiuPHOgQCggTn2Zzklc9ZuM1C35zaJu/8R
	XvkP6Ma8pcEaqXi+7aOx0FPFO1oE5fEuCZmLUNeY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f13d7cf7f-03c53025-c964-4dbe-813e-879c7e4e846a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ea5d01ba1f5f08e4c3a99d49a35cc23313dfed950c4c5a499209d3ae61d47f59
Date: Sat, 19 Feb 2022 21:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645305384
