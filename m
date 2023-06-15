Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CCD217FEE
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 15:59:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB004C433C9
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 15:59:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686844748;
	bh=lSl0Fw2TCnMGFR7PQpKHdeWHlIJeWVGSA4ZBKv8lJmE=;
	h=To:Subject:From:Date:From;
	b=R45PzkiPfttMWSLHUxzkLFZUM12bXN5ICdbqvMmA1ow8QLsssHLzd4fQzN97LEP+q
	 NbJlp1tLXlpFeM/xAHWIII4eZ0xOjXoqGVw7+mU+7AOkMr9xhTJKPEw7BaEE8U8VBQ
	 rXWbZ12W84UNkrXqeyINJG3/GCyDE+H2XFT5Es8rQG+GJfXH59cDq+xIxj9aqqp6Mg
	 63BaMlZBNLl+BWZU2kt7tbK6VnqV++QbblV0FY2gDJfVVrWXVslr8CWfSO2RKLgeFR
	 h1whepzkHAHWLbaqUHiFkDZMHIMMX86LfinSFjj9EqFWHTaIEhnowuK8zulTXHqs+K
	 vAa0Uil2IKcYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3CB9EB64D9
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 15:59:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168684474866.12131.10236804787113005342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67edb954326d7b305e7342a5b9d93d149245289cda7b4626670c901277637970
Date: Thu, 15 Jun 2023 15:59:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686844748
