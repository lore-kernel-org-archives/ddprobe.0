Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54F7A19BDA
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 18:23:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB5A6C433C0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 18:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687371788;
	bh=cKyh0gwDGBSxxPzD8V8kCWzayIjWt9y40HWIsX7heS0=;
	h=To:Subject:From:Date:From;
	b=n/dBmkqbo7vVKpoCE3kpikpCnM7Hjq5H3wz3gJLTNdO9Q1JNtDeRp0A5VMKVsPXEn
	 1U05Cp6mTcTflyUqP2C/zkNh7OY06+TxxN/kBFpPFPeNRYarrw2xRpXaqOxVaMIhL6
	 272g30/KHsHnwIUIDhk+c4wtLEQm5BId0QDCYArcsSXDSkvOwOpID2hrTF119tkf13
	 gnPAGid7DHBLR/6YmmNb39p0dO2diRXlQeJJcSG65oUfm7pgKGHFvxxi9UlBGe7+7e
	 ikpykC3qP5WLl2zaYnd/ZMXFB5YqaKBekISCwI07WzRG/twlG+eNUHj08dqnFVvhyt
	 EjApsOSyDSqmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2240EB64D7
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 18:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168737178872.24369.4012228972035454052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c29782ef30576f8e557690f41e648b710d1a3b404ffc1d0bb7dd4e44190d172
Date: Wed, 21 Jun 2023 18:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687371788
