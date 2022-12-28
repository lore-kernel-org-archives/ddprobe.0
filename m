Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E58B9A47
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 03:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 834D0C433D2
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 03:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672198287;
	bh=EiVtZ74wtiBOY0u6ta2ogmU8Dk5GxGvYpSlAx3WxZ7s=;
	h=To:Subject:From:Date:From;
	b=dwc7XMeIsTr6XBF0F0XwbIeTQHW6NJNVly7f082v6De5WUqvoNe/gEvOmlo+jUui1
	 suMXrmw5Ko4DsMZMqhdZ7DWy9vKjJhXqakw+ALCOvJv9GGKO3Y/C5XgplZ+LeH36a3
	 CjX11aL3VBxEBMdXnXLJVxbCoxVPVwwm5ci3WL+I+aMmqMcX50dPPowevtnkKbs8fX
	 X2VCLW5LDQ0xEOjwfhSTciubYbjCoV2fC8TOagDcYkhZsWXlQtkB3m8uRF0mZDwYwg
	 ZTGp3t2WZt/MXckA8jX3U++niIUodP00vsCgBR0iKgaQODAxK+qPM5jNzFK+YIe2eq
	 F03fnKn/6PPPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 684F1C10F1B
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 03:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167219828740.27115.17603199687294158012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 554dd91fd3de780eab52302003808b6e976738e0968590f7ca5b74022ac2931b
Date: Wed, 28 Dec 2022 03:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672198287
