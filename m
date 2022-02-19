Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58B232FAE
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 14:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645281684;
	h=To:Subject:From:Message-Id:Date;
	bh=v/4AXmDFhB4kZDwiWP7XZqENvtkcgJIZc2b/xHW488Q=;
	b=XGUYB/0s+2CQdyqHb3TfAn5raIW8op3QGOU9XPliO3kLqo8A6Xx0WiXXRiQRXVTx
	JEvHbcB+PcU/9kVXa59GHlRXPvoKb9k5ap43VefqHJzalfxO4w7ILuUflV9epCGhhOs
	mTJrWF5bzlkaOLJTydRhOUyO3q2mswsqPb0vxMfQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645281684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=v/4AXmDFhB4kZDwiWP7XZqENvtkcgJIZc2b/xHW488Q=;
	b=EUmf2Cyp4+X2vWdivdNcX8m1PQbiBpzGX3jpdR3Hy6iodvHnOOPn3mL0Fc/ZbP9Z
	apK8hGealbOVfsV75CEDsFIs+X6qIpY654nDRtejreH2vYL/gMOEidDWr0/xZoKbzZh
	4IZ06mNTg0jqyTxw3z84jFX9VhXULs7yhns3vVPI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f126e2cf8-3466083c-5f21-42f7-b9c8-674d0fcc5b9c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 24ed2fcfc7c9696d131cec3c2d709faa8c818b2fd6f4c00155e58684614f98a9
Date: Sat, 19 Feb 2022 14:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645281684
