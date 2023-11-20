Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2429D38DF8
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 23:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E7tikhJS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 876AEC433C7
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 23:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700521696;
	bh=astQxxeRYZ+3W8nAaeRDQW235jhhfuK8Zglchrh+220=;
	h=To:Subject:From:Date:From;
	b=E7tikhJSlRHlkVID4+AJmF8Q/m+F12QsMPOvtX1KH9cSFDy/MKzKcXVMJ/nucZ12m
	 9FGWBvlPwbA8JrzZQgjzvrEDuwm29sBkarwuVz0t7/smnPBwCRnn4XMqcogY+P3V9t
	 2cY7g8Spp3v/sV5eDIKsngG26yGu72ntrmE6bSDklJYiCSrktcTW4NNDzT6o/cDwXT
	 sAbetmfV2kDHcQAdTY8yPK7K0QQYMzevY9vkIxHXryMe5F2se3/C43TKO0miWz3/Wg
	 07brHXJ6izbg/l+vVh5Rc4m1RnU4nS/Ecb1mkNNOKRqcDNBLL8llVM9k9Kj5HMWUJx
	 PxHnL4Gepkp4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AE52C197A0
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 23:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170052169640.3606.7181120004849991856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b5fecc9d318fcb38e03c14c6b9951c96ee0dc2866c619201dcb69f4f9408daa
Date: Mon, 20 Nov 2023 23:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700521696
