Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8F0F23D6
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 14:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B324C433D6
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 14:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667052654;
	bh=VGXf68GMA47tFvydMEAhfl+eEUHkbTiq+mzilIsojnY=;
	h=To:Subject:From:Date:From;
	b=iILLKUwdcflI4j67ssJeVy09G4uBMkWoMDQz87d0IBZPrr9TYuK9SmrzaGWaVv2Qi
	 gQiDeoGlmSTaq7k3PNRwMQd2OWA3yKkrL5uSPS49ZkxolkwmFKZgImP7P7C41txNUK
	 X4gEslug6efz3LDR36bks1iSirgSFbnQ8gvq9aHdJN8StVhN+tFqRQIpwiQPhUW0FA
	 Ibiyd3j1DcEyHE1hTUU1NhcWwxiKfs+7ilfkEp2YfmK2rF8YNddqsjNHekqWPTKzrV
	 bd2Fc+LJHyD1rYq3OaGjT7VyA+Joe8deHzdrA0Ym5aeyNcCCJqQ6W8cFOuBEvdFJvv
	 +IU2iF6WW8saQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7943CC38A02
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 14:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166705265448.9254.16164501306418919472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e1b2c1d3e470fcb5e49c2c5386f2f6e576184c5ee7b6975b571eb8fb414495c
Date: Sat, 29 Oct 2022 14:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667052654
