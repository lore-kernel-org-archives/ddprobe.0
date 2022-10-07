Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7F1E46AC
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 15:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BCE7C43140
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 15:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665156653;
	bh=Qv0y2ftb2/BfDlmxTgdSn7+oZTKyz8wIqwiQsKE0koY=;
	h=To:Subject:From:Date:From;
	b=DPIHKCLsMUmgVnNeRcztWeqGwsVt7DtsIpfE0KYBEYq2rLV0EGl3QKtsvKeLm4VS6
	 MZqzuMCVVVoQ+khK8MoWQ6dktNgBf3ygw4Edw8K8UWRzh2qjLEIpayKSIDMX9hyjgs
	 hnmV97ZWeR5DCn8AbuQ1VEK3TEt4YKHJzppSwSv3MVmCrXjY0rVBglCfU0Q9ipZy7t
	 UgA33/gtbeA6tGEvdJJTKuodRht4seoiVmU80oDes2LxYB4C3MGAqgXr3hMNVocozT
	 ByrZFmCAJqOHXLiV5fvnNMz/BRHkiuuSS/NKuEeT2XhUzo7Bq2rEDM4TrzOUs/flIc
	 zl2nbOi34/t1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 506E7C433FE
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 15:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166515665332.5917.5054765778703135797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f81a73f0a842751b1091a0383e3f76b93019395cabcd0cfafdaaed39f3c80aa1
Date: Fri, 07 Oct 2022 15:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665156653
