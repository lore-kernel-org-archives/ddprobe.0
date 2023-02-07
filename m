Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F1087480
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 19:09:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3690C433D2
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 19:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675796945;
	bh=pnKVJgu64bVwHfivb7QFLFKHec1jkvjq68NFGxz5nSI=;
	h=To:Subject:From:Date:From;
	b=Tz1R7aNDUasikxNwlxELg+xuEG5LBNOjsVl/2pc69HGFnGlOzoib9yya2favLu8tF
	 mYqHWNU/ofq7hHRs4FmlefCOqihJayi5kmzFA3A4SdUW8Vlq7wHA5es4VvgL2ixc2b
	 qYvIAuhN7aCqHgZiR+adyiQCw+kVcXU4lTQImdrVIZzzSZDsZoRVzHy+nrf6wVcT3z
	 pTfOhOiXRvMyMeCldEzt2HZdcXjhrCnnGoM8G3LJyDgufYDlJ/TZFQQn/ppmAtuBEG
	 +ZWUmdX/UXsSWT8nVktUDS72q+Nm3pBiJKU8EgO2GtVMlVRV5C8JdZhWozI9BdVo/b
	 e99nQqhuOS4aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5298C636CC
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 19:09:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167579694578.6633.10434309081347654047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad08096a951dff7659c427edb1afad2e7c99afd21ce3675a6cbb90a029897d62
Date: Tue, 07 Feb 2023 19:09:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675796945
