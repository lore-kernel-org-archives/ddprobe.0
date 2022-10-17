Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A94C9ED4
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 05:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 687BAC433D6
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 05:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665984653;
	bh=h7c0qtxjU981JwTE7rG2T48BwST2bnjBPnAbJYkisTw=;
	h=To:Subject:From:Date:From;
	b=ra8P1AiG3PAqeN+5sRxIvvnKwTfECaJc1N6vYBq3QXiklQONKHgYJWsZesJWZivJr
	 JRJrLaEZbkBfvNQP9q4LMejrdZWMDXxXvNLCoEMEoLRbr8jpmcjNlVqWyefZtEa+fv
	 f3sOWHWPIPkeGfK4YEaLNtzqZnpslMra7tFG8U2+SXJkT2FEQxYfFK9UnVWSdDd/k+
	 0faDVtjBMtqh4fcof0TJBZsp1qbP91o/ArmcwCw19pZaNI4mGA8ZGFsmtTVwACOduW
	 GouuhTgnwYObkeeLbrj5+NlzjxIpZv9k1gncyWjVae5jtscoIWf3B3ujakAyovUjsN
	 OcAygUN3B3t/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 513A4C433FE
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 05:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166598465332.8580.8781838907167201291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 491c0fe390494c3c0b4c240d64881f45ef232a9260a5c346ad69d9ad3c2dc8ed
Date: Mon, 17 Oct 2022 05:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665984653
