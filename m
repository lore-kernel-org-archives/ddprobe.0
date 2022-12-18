Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D51827E
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 16:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F527C433D2
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 16:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671381687;
	bh=GXg7pSZyN+BSg/g+W4ggeJW5ng5MkIQ6pcd5/eSiFKA=;
	h=To:Subject:From:Date:From;
	b=WLkvju5qRf06T6AnkdzoBEVbKgU12QilWFtkY1R7TCTNT4PWw+aRMOiJ7yIQlvIwH
	 XEzLi2FKsqYom/hrdKXZTap3z1aH6Cw/wugxWImnLMan9m69BXhPh5XWNSuYclk0vs
	 +D3MGV62Gsfv1CEU/kD2zNHuSqKzTsepEn/aeCiBu9vPPwvXsEe/MYgjcYEdiTfFRX
	 Bw0+yB/Pq/fyuF+waO3n+bjS+iPf2WH+9sOOIccK5BxT+nu5azeEMYAOdYRr/fNkfj
	 cREmMWOcGNB2B4KRQHJfMvZbKSMPvwEVuGzwhfVsyMRAyxpkty+xoqHPGi+p3QdY65
	 s981OKAyeLEYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 652ACC4167B
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 16:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167138168740.15079.1965791693228726956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c65cc05b6afcfc39226b0979f67ca187331d03ccbbb09c9b60dfdda9c596f8ee
Date: Sun, 18 Dec 2022 16:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671381687
