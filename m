Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FD462571
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 16:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE465C433C8
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 16:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692980648;
	bh=RnOWEZehuOdJ0v/0bEfH/Oi7NwJwqO9jRKkETBRbUTk=;
	h=To:Subject:From:Date:From;
	b=C9rUFRoAQRSCLT+AxLGw+Pq05arWbGsBsPa5La3B1hd75KBEFcqjJo15WsNAjpEqF
	 4iJCGTX0WrlYhrWsdztvrUJ1AFv9mk3aoron2kg6BcRnkQF3FCgKkuYu2Z4uidG8Z+
	 D09I8d4XX37Bc0u9iQB8Rd84dKAIGyCVJkq8MJM/t0ivjFVcqhunMQ4ZS4trRcOWb8
	 QVjWqSUOvv35LX292yPf3439SH/Kbs3PFAYTAmqoCAXhx5D25wSoJV5RbpI7mKIpPO
	 kU95y0dhIFm8biz1v8E91TSeb9ETbv+kCztg+e5uZdw2aBxRN4OV9cpVZsZtLlwH6M
	 NFBtJnPeNdeVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6DF3C3DA6F
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 16:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169298064867.30136.14278625128068632594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f7ce19ebf7d27d828c6587d3f9614cd1e29c18b9615a8f7f7c6d511139957a5
Date: Fri, 25 Aug 2023 16:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692980648
