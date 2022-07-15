Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F10E3D76
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 17:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657905412;
	h=To:Subject:From:Message-Id:Date;
	bh=2G7YP58vxfAClxG1jbkNbHcm8XTxw/GXlW9TZdiMMI8=;
	b=cVZIe3Hp3yd6gOtMmkaUKpXp2FbhfQY/2h7KClq03DzAAAXchGr+KZVEwakrJ2vP
	+nlwucC3Mbr0Lz92LvVL8hOVP2SFfonefFkEgzbnrblO+MXPiauoOnFghG05rsnH2vX
	xBsk0zMhd1wxL22zgv+GNdkuVlR9Dvtga+1L7RBw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657905412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2G7YP58vxfAClxG1jbkNbHcm8XTxw/GXlW9TZdiMMI8=;
	b=Fx0OxnuPv5coan5AJ24WpqqSpqzB2uL+2ROqiJ9jhn2WQsL5sU4kvXsAOw4CtJpx
	ieEtKVDOf9e4UM4zN+E9sRcwTF5J5zcM4XVomGMISvTwSjX0CUK7W4XQg3g7cY7XGOi
	SnDlw/ARuXcsnct89hbBp6BWibW0eorLRiJF8DlY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018202dcf9bd-69ba25a5-1ed9-4b91-b6d7-f65bf3e18813-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0291b444151cb5858fedbd5d30af0a7eac096d91859f3dc065705858673a2ab3
Date: Fri, 15 Jul 2022 17:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657905412
