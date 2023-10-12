Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B0E12C840
	for <ddprobe@lists.linux.dev>; Thu, 12 Oct 2023 23:57:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IQB5Eqy7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4C23C433C7
	for <ddprobe@lists.linux.dev>; Thu, 12 Oct 2023 23:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697155028;
	bh=s+f2frA0EgsN1pwcGAH25u2gTIGafEjSVPLti1sJvJk=;
	h=To:Subject:From:Date:From;
	b=IQB5Eqy7nEvfuTHPQVIbSLzckMViEmovrkigDAB6XJGToKlL5WgqxwvxmMBGUnQfa
	 8idUXwfyWBg1sUMJdAgTqaUMd1+rddSBp5H/Qv8D/B4F3IMwcaE/w+rCNAl6KRcYnJ
	 Y+1+hSY5jaby/Glal6pVIG1NvMdgl4M4fvQO/Qza9G/tv4gkP7QrA/AAIofbYUz212
	 taTywDRzrWZ/7SQ3SPdiRFqfMnzIXgWfxBrL1WT5MKrqZL1aKYDIpSzHLLj8oeQu4t
	 6bISlOF2XqdNrs8y13FoxlqSY13ubBHUn5A0h55wV3qDmvIXWWtQzP/F0jF1mIG6NL
	 zP1pqt+Si3Yxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9764CDB474
	for <ddprobe@lists.linux.dev>; Thu, 12 Oct 2023 23:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169715502874.6133.13932683542216996399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b267363b3f28aca820efb4b310cf9efc8739038817ec9c7088cceda5215ed142
Date: Thu, 12 Oct 2023 23:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697155028
