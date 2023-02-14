Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F61ECB8C
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 22:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9EA1C4339B
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 22:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676414826;
	bh=of5O0pg9NORrtG93Vzv2R/9T2XSwkd1tqtRDUQwmB8k=;
	h=To:Subject:From:Date:From;
	b=uUUsIH52xgtdgPf0ygHYsGU9sr0HIBlOH4UPzxKUcdz9vBlEGmmYFwJLaMbvFMHWW
	 yxYkcv0WobYIiSmFPUUbxIIpXExQRKRc48cR0P8P5Xn3pEZNnUSsd/+m8TCwOWni1m
	 5+rd6yIY0Nr6e5TC0+mZxxXhDJ9dhZq0lpev/UIMCUmyH4AZzrDDi/GwcGYXFq/o0F
	 uInFsxxV6Dy1rZq4xmMNfnd5RnTJnvhka9NKmbVfWKbkKenGLQo2S/g9b7Vj3LmPzL
	 s1oQcyH+fMAdMtai7q7tYAZ491EkWuwb2x3Z47J+ygUyeN93Er5Pp04Hf3wreUyDBf
	 tuLYuthiMIzmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBB2CC61DA4
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 22:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167641482576.4913.6256990558145747170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16d84fb4c7abe897b8554f5235e570c49d2bce837dde538ff7e10881d6ba861d
Date: Tue, 14 Feb 2023 22:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676414825
