Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4497957D1
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 22:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645310184;
	h=To:Subject:From:Message-Id:Date;
	bh=sv+5u73QQB6N7jDGiKBW40/TnrHT2Lbq15mUVHWqeCE=;
	b=e7ztEUbPvv23zpWLPi4o+QGQ/k61QJ/x7EmXe888PkuPLbhcadjkfxXj+PPoOS3/
	whESChw7ZGn6Yi3ws/H6r20F13QQkYz4ZkjFH1fSypNm2LhC3dN+/8zanfLsHVHNqtA
	LS9yzAwBsdwo7zSfnh822cvoR99VJL/T98VfhTNc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645310184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sv+5u73QQB6N7jDGiKBW40/TnrHT2Lbq15mUVHWqeCE=;
	b=Yixpth1/gDDgWm8qoIvzMmygkEHVqsDjXaCv+zIP5rfFQE7gXaLOiVCAnsrbYCcQ
	1yMWkQFx6b+fDn7a+bxMAzMKL7FTKJoS6W8IAJ/rPz+D/zserxeFQXG4Lvn7rpg+WBH
	HRJO6+iacJ6c+UvmWgQCFgDXHS7rulL1jQae8daM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f14210d5d-ff1ae939-5054-4ef0-ba6f-789a5fc82da7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c54413dec7b7561448ac3c3766c8f5863f28ba5c85b6ccc89e2d4870a9c8ca83
Date: Sat, 19 Feb 2022 22:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645310184
