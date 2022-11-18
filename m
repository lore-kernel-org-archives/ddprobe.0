Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94E2033F0
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 12:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69A76C433C1
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 12:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668774054;
	bh=9UW+++4ycfjgqnViHrH/73VhhnPJVvVQrnHMaTpaeJo=;
	h=To:Subject:From:Date:From;
	b=n7tHSk/krG6Yagu3mPX/rnhLacJj21XpghTNcu02BViLpUesDKXML7BnCbN6ZXOVA
	 g2LhXnSWwTs2BeXmrHOcrF6RCjCnw9XkYu2xw9gNTMDDdW5JzK5TdmGbLT/zMwvA26
	 34yp5MkWV2J6IEMpg4kA5UuQaoWfdRnE/cy+Li+H6Yrdp9TGcljpt9FFWELPb/EE5g
	 ipRJwcH3pq7aTlHqNRcwKSq+VwoPAK/yPCrH4bu+v8vl80O8AsUvxUKz2ffVb9hUpr
	 v6PR3XR0B8OsCunFyCDD1Ua5UWNZMTfx5PhyJIJV5nPWbxW73+807clTnWCNeqlRJz
	 n4OGEUmwXwSLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5457EC4332F
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 12:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166877405433.22314.14378628102931846974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c980c11bd17372d5e9e1ab3ddd9a1ecb3e39a1ad8b553ccbc8f8d0d7b099c52e
Date: Fri, 18 Nov 2022 12:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668774054
