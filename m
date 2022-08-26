Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBEBE4C94
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 22:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8006AC433D6
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 22:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661551252;
	bh=dG+jqO0PB0L3SDsNuWgzTPlCYvRwuj0YjHIigG9w7wE=;
	h=To:Subject:From:Date:From;
	b=mdfQTMznLUl9nVcVU0OTZ+GNiUXCoMqtNnFaowXxO2JZQ4J+8tOEEOJkcn8PMmMgu
	 YwFYJkqqIjkhVF/kyIqSzx2OL5WvqnHonLs8K64HiyRg5HF307A1L4Xio9vXNEDj9D
	 67Lou6Qr+EFNwFcC9mtlKdji2Krx8IC1Ugcx5y0a3kh9jXoh3PDZhYN/ZKp1O8eiej
	 pRWouDbzpEz7rr9ZzO88nA4wevqGGJGVEU74CKO2Br9aHLMJLGxo1UKaTEgByHLxeQ
	 J9t3iWOKuZEGyWqR4rWfUeC2h6JbDWeLnL8pZyRBtHVUpsyLMKB1SwgbrfWconMrR+
	 I8sOy5tdJpQMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67111C0502A
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 22:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166155125240.9715.4525458135045295032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 081c6626399dad9af6a5cc6afa3ef5c69ac99095a056bf183eb6e338ec0999ab
Date: Fri, 26 Aug 2022 22:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661551252
