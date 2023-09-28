Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C905749B
	for <ddprobe@lists.linux.dev>; Thu, 28 Sep 2023 04:46:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7DADC433C8
	for <ddprobe@lists.linux.dev>; Thu, 28 Sep 2023 04:46:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695876368;
	bh=W/VocsTaFTV0mNx9XQIv97e2KtnSagJ+buhky+O86zk=;
	h=To:Subject:From:Date:From;
	b=C3F6UjQeSP+Gpq9975IlgSTte2ykJYjMEKP0xlUWMlLjwFjZH8zRDG2FL+RB/PbOP
	 8f/DRWKXMo7iDRGGSiNV8qgUlUEcVGvBRn82xCDGD3d2dE+SFXcbrbYMhyNDpu/ypk
	 zgHC39cwhZgEtmI6zWUap6mZwn9uhlZbuESwOXXQGeuCw5ns5jvqSvPk1VRonX9DP+
	 GTxdaUH5G/QWr+O3yFvKBPGqUcpr8Lc2YEq0sCBMUAAY94aZqZC2JN2wBmZKn0dclo
	 ysFzpWvJNYvRuEbwGBAhm9jlOJLON/uCI3/n08D13Ndp1NrLlFGEph22/3Q4hWd+Zy
	 JTrk1C0R5ROHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE4D6CE7AFB
	for <ddprobe@lists.linux.dev>; Thu, 28 Sep 2023 04:46:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169587636869.8414.12760172155758896871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53b92013b14b1f9d72052e3d2d5f6f4482ad1781ef3a836c9afe8aa561b18b72
Date: Thu, 28 Sep 2023 04:46:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695876368
