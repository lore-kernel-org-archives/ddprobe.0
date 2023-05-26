Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F6BE848B
	for <ddprobe@lists.linux.dev>; Fri, 26 May 2023 15:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEA1AC433EF
	for <ddprobe@lists.linux.dev>; Fri, 26 May 2023 15:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685114105;
	bh=CBv1udnfVqYiMectTsy2/wG8axgapnVVZLJdgxv5R2A=;
	h=To:Subject:From:Date:From;
	b=GVOCdqC/BGhdfFtgOcQDyqXB2/VsN/BkitYxQa7HFqpw8Yd7A0EQaPo+0BzbGYkrW
	 mZw81VIOM0QYIhS4FUZd2+5tDroQlVQ8hVsjzZYI8CjqHaz1G6HGasTL3+VEoPdQwe
	 L/2zDynHc0oBZX/lf3i8s1AxkjtvM7qPng140t2SZji54EzcC17ejOibJOhBxXzXUb
	 3iLOjfgnIXddsDzCluvUdqa0vojfdswyFGrHffGVoRVfCqsvEK+rI6rGdiyoox51eA
	 cqKtix5hv8cX/142ObsBhuYYwMTN8sx30Wmmo+7NsgWiYR9mLV6MY9zai/FnAnV3Sk
	 Dn//wf1/wHJtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFB62C77B73
	for <ddprobe@lists.linux.dev>; Fri, 26 May 2023 15:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168511410576.31443.15015189042218072861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1165147f617e86618aad2462de7140b739fab1a5a9d3baab7f7849bff09efd8d
Date: Fri, 26 May 2023 15:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685114105
