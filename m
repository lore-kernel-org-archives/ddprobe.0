Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD4FE23A7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 06:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7ABADC433D2
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 06:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674021687;
	bh=ChERrFlm5VSEHNPWV6PQRFQvy1A50KxutOB/KU+muR8=;
	h=To:Subject:From:Date:From;
	b=p2Tpode+in4ErZ8bUW1RkQZ5+yxCxWV3Q6JNlCHrkQJfpayR8fGTtmBAqyN21b0Pm
	 yM4yBFdK2ewttszEVxSo+19APbDCkSbKYcaOj2ar9PoFHekhulOhoeq8u7SG6iXQzk
	 O7bzaPTf/sYvkvOrnDGba3r/YbAnG5G3JYQM5lmrVbz5XKFnakFPxIVMiYP9uwIKSd
	 UAjg8p8UX6MH3gjYu7IQCTap2xWEj7/WosFpkpbTSxkS6TL6pwSQt+15Zgx/KUZXqe
	 jIrzyoMfTyEqWzsHAMzv6M6eh8J4OEjOY9pmJvkdTRCQ9J7xQkTmZh8E2TeDXTVqRZ
	 5w7senYRTju7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F361C38159
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 06:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167402168738.3304.12577117406709594343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4f2e70dfeb3a535fdd11c25c57d448a16e88bc5bd61e415210d7d49c199b8c6
Date: Wed, 18 Jan 2023 06:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674021687
