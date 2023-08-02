Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AE22DF51
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 16:32:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFDD5C433C7
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 16:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690993928;
	bh=Al2FGwZC8MkINx23nRDXgtdZUs017796CWfN0fKPj6Q=;
	h=To:Subject:From:Date:From;
	b=A2QHXq0ph2n+rIrPiR5n4TzoVD0ydzDnOPTFANDUaAtV4ZFy1ZvtFUsDPeERKPBog
	 T/25bcmQm6obD7UloUE9beeyAMpwP+AQ2anCUaaGlpkCM3JZj8P0tz0cpFHc11DWlq
	 dhDtM3jbaLWkcYZVLQnYrbqqgTY2H6JONdN2JlCVOhLAb6d/8pQ7xSsBOIeApTFM0M
	 NWMfcuRTeUQeWd4D67/fjIPPyIBPJE+r31XDaY09quGRXiXHwzbS8AxOYUBUrJo0n8
	 +W4rgV4fgmEN8ZBAVBMFlt7uHM51DWXJUNfCwASBPU8ApmlV2gadRZtiwLIACkcA3+
	 0D/ij5YCJheNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B373EC001E0
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 16:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169099392872.11904.7242858646144932862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b7ece279f0fbe11630ea0fd60b29ea5e843e54adcb3f6aab2f14b7f3f3f24c7
Date: Wed, 02 Aug 2023 16:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690993928
