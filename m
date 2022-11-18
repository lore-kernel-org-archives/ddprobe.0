Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEA788F65
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 18:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 778A2C433D6
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 18:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668795654;
	bh=kZxEk04gfVGSSfBHfrejzXI4vnV7oTkI83Ibdmqyw3M=;
	h=To:Subject:From:Date:From;
	b=SY9/kh/9XsaSMb35VeoNqtA9b9RtU7DDnZgOLpAMIM3Hc/vkFlbBlUdXQnNFMHxuf
	 kUxqu7tKMRnDububVmHiTYz/cRQwDKfpHmoCvogfEoQ7EHoeyOemVb+jQM7a6aSl6d
	 MgNqbfDALsO0l21EVj8VF8Vc9wgHjhiJv23piA03wMSm6Iv7V2x3iTC5aSuiv3nPCZ
	 hmKRrAdDzWAWE/+gmKTsiHrVQIJVVXMKpVCzsmCMdv11IHO70Mqyt607f9gW4OishZ
	 dkI/eYGAIsRsVXpxy6RFem1MaABHKpkdfP7AaKEzwQ3LOPnf/3GeXeN8rV593iox5M
	 1Raq4zLB7ZJDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A213C433FE
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 18:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166879565436.2944.16977714928028131226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d418f8932081212e343a786695032c65e0ac566c4996b5cd16d685b996fde417
Date: Fri, 18 Nov 2022 18:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668795654
