Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AE8B363
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 04:44:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C56BAC433C8
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 04:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693889048;
	bh=T03oPdM2l+9CFLCO9HE5YcN9JlD/vNjnXMpycEWw7cw=;
	h=To:Subject:From:Date:From;
	b=S4bCTEcCNwctQTKIE0VqwSjNY1zuu6equEdo9fBfzyr8hN6+4XZf/cmPA2FT4pkb+
	 zORlRLjQjNZid/rwo9DEbAP36GE4dMzjKnecSLt6Whpzt/sXXp5GJyl0bYLUiyKHYQ
	 CrdvMdHzt3L6Gl4ulQdWsQHwMBxuJaCewpznMu6Jqqshd2X2+SJSI1tZwaYYJ71enS
	 x/Zj3BHsY2oCfz3JXb3e2XX9+cJXS3vWLwHoq1QmPwGtr16m/0p+GWeKMnMBnvW14B
	 3SvprPHJ63FSDQku6Xg7dv5+aiPq/crR/Mc5Oplou+UsZaGA4y3An5DLmKmXWOhkR+
	 ThmaW+ccMMjwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B51C83F2C
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 04:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169388904866.22598.14054361914212932343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c04519d27f8fd84e4eec5012122cb9742338067897cec8a1cf66d8508e10964
Date: Tue, 05 Sep 2023 04:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693889048
