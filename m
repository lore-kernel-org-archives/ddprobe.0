Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF3F612286
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 19:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87EDDC433C1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 19:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666985454;
	bh=/TCcMM6bll7/Cjg2pTqCKBtYviwkZ/fm5LH8AbPOnIg=;
	h=To:Subject:From:Date:From;
	b=FMDP9R4wY6/DDmEhnd+7iZ005/EDN+2JjVcvPj9hgjcRHkGzrS1Ep55CnpzYqmPWg
	 lTW5Rzz8oezm+qemuna77ykwQliB76C1ni/WjfaIIWfAebndFvdFtoc0HgVMbgPi/N
	 QfPR2dGvZ8dpCK8qdMAAx8N6zlftOjCLjdBw+ZL4GUYDWVJ+lfc+3IdeDG/zERcAPw
	 aBooNOsYj2Qib7Wo5+CEIRsJglvSsgeBztrKE1zLhkLcD9W+IP1CMdTFcNTKkT6KyC
	 9+IEW1ZqGpUFGkSsQJsprMlmc+LSIwfxVeHErNQXlkT2Uuk12CuHQnmfzOd6Zb/zqs
	 a1mFmOzH6m3nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63C10ECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 19:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166698545438.22988.11384904750952136434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 249117274e43fe0c9abc97ed4627e85dbd82429a271c7b2d214538850726b410
Date: Fri, 28 Oct 2022 19:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666985454
