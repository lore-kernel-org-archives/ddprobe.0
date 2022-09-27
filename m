Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC11F23BE
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 14:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F507C433D6
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 14:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664287853;
	bh=v7p+LU9qJVIvhPaePTlsF7YBO1GoOjZB6/iteNXqZi8=;
	h=To:Subject:From:Date:From;
	b=CoMTZz7kPcv/GxB6VPbsUJ4H9oEudTY6P4kD4swIfJsq74l+QU6zH8yEplG1axlA7
	 WUhxz9V3506vzjAp1Rc/Ksz4n9pe3As+O11A31oUsCgnpgq1vW9rkoD+v2lKT7b4MT
	 RDhF/76tbWTqwdtDJAz/C30j3fa94xJE+UoyvOQPVJH9j9Cpuw2gtaku/9L6Qar2gX
	 wvMFbMHOfnMa3PyOQi4yGXBNEUsWaZla1sy8rttKv+zH1tpSrmGwmBHvq01bqYEIg+
	 0kIl3jqz+osThaYzylqWvDq0+Rc4OfUanMLJEd3rb/s4Hbs4SkNj0p0LqjGs7fjgSt
	 rr4g9lei2654A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 532A2C07E9D
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 14:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166428785333.31841.13301444888597465654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fff4334c226c1dafa4c2bb4a3a1eeeea8166931d8dc7b104a26f8b5aa88d64a1
Date: Tue, 27 Sep 2022 14:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664287853
