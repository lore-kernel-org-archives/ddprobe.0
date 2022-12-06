Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD7978BEB
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 15:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70217C433D6
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 15:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670338854;
	bh=fgBfrGrQlG+klSP6Mv6IrhXFqw/Dph+VvNp/vjOWlVQ=;
	h=To:Subject:From:Date:From;
	b=Q+5a8sOvOtiM1jaVsCm2NtWNoO8nU77s0t3vGm1+/Y9HFojgkiACv7PfMasQwOzvc
	 36oKFEIwMDyFuluDAfIrSnKv4/9U27PyEFg2Rof+O/sA/qF6kixVYopfpHz3TYKNMQ
	 6zQ8uwkDmxVxEP7opK2IKr0wCbp1U084sF/0FXYV/+kvDPVVW/VyfQmLeiiII231iv
	 3ZE6AXWzR3cslbWIuWkeiJY7JX6FRHzPJOKmnSNVx3v804zjooV2DiHVyPgLwwLErm
	 iHRv3RdsulIHqEIqEPs+EXQAUmnhjHEG9vFYg3FjOlrRFBLwobk3fNU4Ybn7m45flR
	 UmTM7lwtIQQlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57DCDC352A1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 15:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167033885435.24794.15546827877349037306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9669406808a72da6a0c0696eb2a33c4f08b498203b22e105cab7d389a834001a
Date: Tue, 06 Dec 2022 15:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670338854
