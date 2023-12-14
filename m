Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BEDE7FD
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 03:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pIOlNvBX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F49CC433C8
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 03:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702525696;
	bh=Dkt/9yxrxLji3epwIOnkKEhubxOgA5govhCYLSZbSLQ=;
	h=To:Subject:From:Date:From;
	b=pIOlNvBXRnW3fDYNxP5vEzHJbKQmnAc9vjscMjyoP3YdqaQJb0luQiCtqZMIv6qw8
	 BVWgf/k7sUX789oykhgEb6GtAceZEXFm4L6z7oseziB+YSLtKo8Mn9I+9iACuROerm
	 fqhBUZYEiR6fC66Ybo6lHbpZxNBjFc7AI7EbQjJx6RsFaZ03DKpWfwOFK9aeUJd3Ko
	 IbFN+ZcJhupGqVS6RFrqtaUmkXhzyB6qaKCiza8kznPVQI2kxd10CgedN/t+to0xZb
	 TF+4xAnbAALkqol7n6UIV69iBvU1nXcg+ddzUPK9G+UiJAaDe/UqzOGzN4Sw5/p1/1
	 K8vNmc1tP1nhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65619C4332F
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 03:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170252569640.8188.3378045331085210249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d56e77c8d8bbdef847dd9e234d3f55cfbc8bd23a5dbbf4b1d07f0b82ec69a442
Date: Thu, 14 Dec 2023 03:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702525696
