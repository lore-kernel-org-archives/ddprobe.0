Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58B8110EC
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 05:21:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 010EBC433EF
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 05:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683177666;
	bh=0ayn1um6WwQON9HkmJJVMUi0NCnGdVqG0YADfocM/Fc=;
	h=To:Subject:From:Date:From;
	b=Ul5rR6sAIpG4X23NDpWPu2oriMXl9wuyI2xrOHWnb65RxfjDZ3syf6SoE40b1P06R
	 +cAbjA2JJm+wl0ZUFM1QQZb5zfqI1DzBRA+a7l1IRqdOuF25Esa8jRSSx2hQCahe/0
	 HXS8RcT3YUvWZSUK1iXpjUMgfURtIx8kKYfPytIz7wsnbIxjC7mPET1yhzZjO+pWjg
	 WP3NWS1T8r+HzoQa1EYM4oze9lFSXy4MS48eT2m9IIjJFClcrjNsDmIZgFr5tCePXg
	 yKrEBpCQ6Qe2X3Rl2GODl+GCF3BM7dmiagxyuvxGvB9D5hum2DbxZRXXDg4S2yG5nG
	 uqO4z2ht3JZHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6CA6C77B78
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 05:21:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168317766585.21990.1076013777423976628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7c3847b9972f166b797e52769c3e2a0ab61436a4b9c57cc3ffc9abbff741ce2
Date: Thu, 04 May 2023 05:21:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683177665
