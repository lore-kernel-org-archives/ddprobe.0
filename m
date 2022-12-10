Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7A4A6FBB
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 23:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B214C433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 23:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670713287;
	bh=JKRZCNSFZj2CVgLyYL9C54v/RgBpvpCp7qVr1pvF50w=;
	h=To:Subject:From:Date:From;
	b=LGrAJyVKV+rnms3MKctGPpptvsJP+wWxnwMMPFycrkuAJKaBpH/1sJLyq+mNsVdzp
	 hkzhRYCf2BjPjdpbBkNKPMrB8eW+XO/NXY/RwYAYNHfgy1HRNy4F+FpQt7D3LbR909
	 y2vVEytUp6nIB7vkPm+KM95q9OFL8UIxtsasr6Nwk1Ow2ALl4MRf0jNqKF28fpw/7P
	 tvs+zkU4JhQ+NwSSWKQshbxKV7JWOvP4phPMo0mbEug+djImdz0Ad77KDLoif1KpVJ
	 MhLK+lDrJYCivUE+pzc46iz0k8VMwhpIJfYxX6wMHfVFWzg28U2zpu17hNlvLbd82f
	 cKkPGxruzF53Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60901C4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 23:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167071328738.7894.11950846373748076513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 379d427aa6159d50e39689bff171ec89619da970dd248420320f2195c77851ae
Date: Sat, 10 Dec 2022 23:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670713287
