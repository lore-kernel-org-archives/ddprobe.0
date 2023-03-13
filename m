Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45A69847B
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 20:37:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 03396C433EF
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 20:37:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678739826;
	bh=JnqKxA/MxWRXLmHeoDmg/UWoWEPipZpv+rEZ1gcmAxg=;
	h=To:Subject:From:Date:From;
	b=X3NFbGE3ipiY6ti3uhQsvfgtcFziVtA+WnF4MzQu+bSfvufEengFacvrqMMXyh46t
	 d26CxEmZDyIKSnwXWSmF5+zuNVSApteFR9AxYmUF/4JdEdCxolrI9DyVkaP3evGxBm
	 eCYw8z8xfZuB/A14npRUsHRVgK8318toyfsLhPonAkqnWkwu797I6FWKSYnFZOrRcT
	 0tXc1o5F/FwS1qsFzs+hVKY81Dtz5EyRCGGr8gjR47Ph8TopkdKJj0mdyIt87gmwPU
	 lYXmEVmkkausMfmC0xKxXt6jHQf9xdF97xo7OwlcUX294R3PYLFc4urRpP4wa9oqL0
	 TAoMtwhVnm8UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DAF15C61DA4
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 20:37:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167873982588.28244.17282623500663377595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d3f18d6149f0fd34abafa278c97b294260d83c46ce3a965ee81d4d50c54f452
Date: Mon, 13 Mar 2023 20:37:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678739825
