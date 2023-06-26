Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C10163C0
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 14:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9269C433C0
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 14:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687791188;
	bh=8rScBeoZ8rkTiFqeW+d16H26iOQ0it4OTGv+xuaf65U=;
	h=To:Subject:From:Date:From;
	b=HTaMFx62Yz9Gz/0XFAycJuZqlIuiogIxvT0ASi7I61rlOZIlSNm3G/BuYo5YwYvkj
	 FRgMLOrv9bY+xwgIW5LozgDi3Q/PROXmW9eCAF0T0dlEdXS3IJIAzhmJqV0/pFFDN/
	 z+Neuy9fiQNHCCaJuIHVCU9NvaliZJiuJ78Ugsat8Xwif96Xvrb4v8CvJ3LQqxFh7P
	 xxfVn/9HEyEpy37o+EqKL2WeTAEPOBNdcieInFqRgrlvmVf9EYJpYZV+xIDXhip/0n
	 2b4a66FWnzocUUOs0I8n/hEfpPCaR21Oe1Q9NBU6E9SHzOg7tbECzFxX4YD3GNrnOe
	 bTVtm9Kbc4jMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD65EB64D7
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 14:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168779118868.31550.8627649650651291941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2666e587d7faba867cb06129e2533e66c6dc955c6c1e054f46a1745aded8c251
Date: Mon, 26 Jun 2023 14:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687791188
