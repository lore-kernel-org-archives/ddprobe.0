Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7E28184C
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 02:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B3EBC433D6
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 02:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662173453;
	bh=lRtLtTsOXNO3ltP0gRp9tVn4LTfPGqGjAborsuwbCn0=;
	h=To:Subject:From:Date:From;
	b=d9lqBORbY1z33tIbAVMq4IfY3NpSIO2G9WfZ3QObZspW97cfydyIe1maEgpHgX7bQ
	 eyh+pwzikhHmvaL8Nhn1gA+VXrPI4toviPHFgrzQ2E9BbiiQJLbefEEYVDI+OVQZ7p
	 nScfhjlcKnYgEB9HQOviV8SP0RTUSxz5i02BEvI0jDYoMo82w8hAYolMd0+y1nYdFb
	 Hu3P08iHz4ySFQ2v+38deO4VYBxvorOlHhIjDlne1UjepG+e3s8nqzC7QhbzNYkGlc
	 1WZePWC6TRs1zUI1z9cTKfj0+jZztRGSqtj8Qd7G7HGf4g+mPtXIV4lUIE8VAdu+74
	 PfQTRq/3cKFTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 534C0C38145
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 02:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166217345333.20462.7330621714234846832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30f178fbf26f71d321231e3f9b315b1d788685ba6ac2f7ef37f974e2e210c2de
Date: Sat, 03 Sep 2022 02:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662173453
