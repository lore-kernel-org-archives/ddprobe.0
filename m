Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 951946452
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 00:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646787385;
	h=To:Subject:From:Message-Id:Date;
	bh=XRl46lAcVqq9ks4wuHRDtGDy2vV3qTBIZh/D4sDIYAM=;
	b=WIEsMuAcjQ0KTf/kV6xmsTqj7miujx2H26ONWFcAJ39o4/HpbfElqIsJPGa83Isg
	/pkZE5zUDK9yE3yO9c7ge2SD/7w7dbHkDAk9US/XS677UJvRNSA5XsklrYkvRIqfJLQ
	MUpfkn5hlpSPTqZA2HHZ+tD+1b7qgDQaJnkc1HHM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646787385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XRl46lAcVqq9ks4wuHRDtGDy2vV3qTBIZh/D4sDIYAM=;
	b=cTq0n7hJJlRB7TACHU5QZ1KtLSDFN2Jekuo2yc+DEsYuyyaoYBeatyhBKWkZk3hr
	5DH3yLJ4Od5KKZFIosD920vwbzXSz0kV8tQxSenDKUXG7zJ2VMdl4q5YQhESJCoVM4p
	m4pL+Z9p5wS4cQ30dN3CG2X0h31IfnY+/TKsh/gI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6c2d55a4-d0214228-a34f-436b-9a85-13c6ad16229d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b3782b82c5311123f02fa71b9560ea695375f7cbea9c6b17416cbd4dc7cf2d70
Date: Wed, 9 Mar 2022 00:56:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646787384
