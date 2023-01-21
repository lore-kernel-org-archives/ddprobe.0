Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33782361
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 01:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D51D9C433EF
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 01:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674265325;
	bh=VoWRFmDqNakdXqz31AtbDt8wlrdl4tETWGBj0k/82Ec=;
	h=To:Subject:From:Date:From;
	b=LjeRtOKF12UdC5usGWnP7KO3NsaSyNkdXHMde0mKi0tKmTM5Hdz3fpiZ6OwS8WFFs
	 Ij0ve7eIpQxtCHDzg2c5XRVF3EmBRPbRxOvvu63ehtHPot+6AS59JS7gDxNDbJ4iF8
	 v+6qvJDqX65sbEdYtX9psIfgvbgAobz4NHzxiEiLd4il8mNCN/9Ngjtai6Ni6SwpUJ
	 sqU+fM7+07KvP31rWy6BA9gPRqxoHHzLHMVZ3NI10J0XL5nfvv6TSiCEs2pGdc2nQy
	 LLEwBldUuHIjtzGe9rZZKGHzcJbrLZ+211Ao5q6tPU1r2bl5k9KHefp2UibU0vkd6z
	 46Uz6iVB/3+nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5088C05027
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 01:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167426532573.19961.12672958442222745945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b564a20011af64172ffb5259d960c2aa19ed843572c3830923e92f16f765c49c
Date: Sat, 21 Jan 2023 01:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674265325
