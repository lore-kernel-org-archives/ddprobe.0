Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C64B920E0
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 15:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72F45C433C1
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 15:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665849053;
	bh=qJRezRyIjm6oc+9rUB5WoDU6rlT8V8nId0wqxjdsRBs=;
	h=To:Subject:From:Date:From;
	b=PXW23Yckb/T4giE5AONBpSnrt4ulSEvi7+Udk8LUEV6P4nu1jRK7zkWVHNOwuCupu
	 /SxIlF8HHEfiXc0tpPeI5g49NVreu+7sOXFtR+vNOHaxN/ljZbUfBz4RedmYoa4mA6
	 dlrQEbgJy6+yqZs6JUCUh5yMldNZx9atE+O1ssXokBWtTHbg875MiJOQbVJv8nyXxl
	 4I+MTx/8U8ka1T67drRCxK7/04oS2SLZCYmgcIiWGku1bEtJLyv4it7EbAsx7SpGGa
	 R1xam7JEsnJtfXNL8Ccqy+HMnR868ushIeuvT7HPdUMrZJEnF6m8+ndLU4v+hmaPha
	 +pUn+AcPQ1WfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B8DCC433FE
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 15:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166584905334.15344.7635045175792004558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ced000ffe07c1b353f9726f0f1b0a38ede4a80f223037dac7d3821cdee354744
Date: Sat, 15 Oct 2022 15:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665849053
