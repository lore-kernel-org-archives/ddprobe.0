Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD90829CA
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 15:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AE17C433D2
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 15:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671721887;
	bh=HpNR/Zi+zKgPWbopMaWVibpQ/f46kqK508Jq2bgfkGw=;
	h=To:Subject:From:Date:From;
	b=OnW7EAa4HF4SjnlX24/Hc1B3hmNXHFWqTf0QN0ipbXTuNsnCvAMguLLyarPPvsC2c
	 aohwScYOPu1sohB5FfkRlb6Uduqyv/1aItikv6xhkEumLU8z0rQHY1Lx38/fLfTaBk
	 ts+wWBFpsTuICP0RLzrTT2YdXiqajH2BGrtcQr6P6JZyXHmQjfM2iZHcTx6IwrxXBs
	 XSub5PAewTyYJ22tZR7hlwUUkHC4yhUii5YJ7sT56gDT3H4Yk9RGA4O/kYzEd4jKzY
	 Ay8V7JcORIqFYGbsfkf7ErnLSBhi20G83OPF6Rhb3XqhaEr1ecboBPj40CK7O/UvoQ
	 R3qiCwYdZ3eew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 629A4C4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 15:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167172188739.31661.1976241622911828323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f66a4f8c9690f5f7fc8d23f286d891beca2ef576b93a8baf5fce93227ea6bd93
Date: Thu, 22 Dec 2022 15:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671721887
