Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93F35290B
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 23:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E79F9C433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 23:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686439925;
	bh=/JKI4mg9rZvp0RbmnA+Bpaste0r/K8wMXHdGc3oj1WE=;
	h=To:Subject:From:Date:From;
	b=EBa1ND2RsPJ1E+aRq9s/g5G76rZY57mU6RM7F2xnZQSlXhVtEo8Rm81LnEMyCtjGI
	 AUDi2QV3ABvTV95JB4BvVxW0GzTLXBNh57EEaju/k4Il/RlmBqEKFw+2yG0tWmmJXP
	 w9BTlPHXZ2ZgX1LQ07ipPcPbw7iDvUl7t2xPJhsu+DyqY0p8e8qbiHGsvZvXxVxMpS
	 L/roN1GTSfDLNMJx+E38/MhUzYXz5Sqw1kOUfBnTHNGj4jO/Ug8QCtH2rztaGTExxc
	 L15/wMxL861swz/9JGTeSXg57s7kUWwV5TMgj8KY+D79eSRw2IpjHzZZQOCI8VBnS4
	 TCeQ0aEOTwoew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5F18C7EE29
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 23:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168643992580.31100.10312588750059905633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b002f7307e679016b14579c35cb05264f46f1fef9abf204b068fbdebe7aed343
Date: Sat, 10 Jun 2023 23:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686439925
