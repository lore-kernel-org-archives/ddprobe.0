Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42ADF7E
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 00:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646355384;
	h=To:Subject:From:Message-Id:Date;
	bh=2F/ooYW+fdIVayCKLvJf5+byCrXGALSvKoIxm1hcLRE=;
	b=iwNrcV6a0TCHI9ESgHhg2YcGw1mVnb443ZROtwhiwGTr+iNsFCclAjXoMExiwkID
	gdDUi+i+lCt09uAzbXbxfzqFh/jwykjvEY7PCFIyAt5Wm5WmT/iLEmvr0H2phoHhK0W
	JEr0T3v7EeJtd8xKx0SiFvgy6wWoymsXcJOdOmvI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646355384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2F/ooYW+fdIVayCKLvJf5+byCrXGALSvKoIxm1hcLRE=;
	b=hRbkT547b6/w05wN/LQg3hy6vTCkj2qqNufilCp93ksWtccAWyYl69hc/uTe0b3L
	MH1rvUPC8FvP3bvaxPNDCJ0sYHzq/ZIJAlcmrwl4cjk73bDFhVgVhdAP3fEG+oo+eKy
	OH3NpuqMU2Pg/LliCOkq6g3eiDdFn+4qGtsA0vVQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f526d89a8-a87587d3-cacb-466e-b35f-717420e78643-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9be63a7efe02519c9ae586469dd95aa1a8c61fb3182ebcb5077c630c70ad38e1
Date: Fri, 4 Mar 2022 00:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646355384
