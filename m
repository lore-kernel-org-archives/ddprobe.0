Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E89B863C5
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 17:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9007FC433D2
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 17:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670605887;
	bh=Hbb/3bjCm7ulwbAgkOjizE3HMtFdopmInRlYfeLZ6BE=;
	h=To:Subject:From:Date:From;
	b=Gd4VT4UNy6ptlQyBViJTvPydYnJRuAyc2OzGTrBTDRZrgqLdABoXIsIW2V1bvdCEi
	 jTWLMuZ2qVGLkKRJVbrdtmmnFP/FE2gdWV6hUkHaWPxfbxaeaLxHGF0cIZfvSIarEn
	 WKjueOTcEYd+w+WPlrmyf0To9nLnavmGsSrhx8bJRdTuqLUwawo8hh13e37JvBUzqy
	 UYuCQVypSPMI6KjjODyl3wf+RuqNVhlsNit0KTUZjTnU0PmykAROkGFDXwXUz7N/qa
	 CIrNIHbeJzr3k0QlA90u7RjzUyg0dC7oT5/AunB/wQh88iTGfH5VdFJnrWDdTG1xzw
	 UgXNzMQX3oo3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 706DCC4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 17:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167060588744.7508.11198805751898778661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa0fc3ca4b2e2a877fe18e66b6455269ad61c2de441df4bd018ced122c98eaf9
Date: Fri, 09 Dec 2022 17:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670605887
