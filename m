Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 496F31FD7
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 23:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1954C433EF
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 23:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682464566;
	bh=UO7o1lFuVoVjSKuNHzRsZyFVblFdI14MrcHjvv/R7FY=;
	h=To:Subject:From:Date:From;
	b=kcPSy4iY5dQ7e7VXRkKRXelTIC9U4SfzQ0z16QYlB0J1J+m+kSEaiXqPyXcBHjoL0
	 2NOitLMN6Z3iVkNIYC7Aql+/OWHfhqzE0cW98aBjfZZitmYVbQ/4z/d76YXrnZJKGW
	 h51JCG3ZGTTIupHshrxi087bfsgfv2HvGKqOFz0JEUlv5B49Ykzwvq5lPDjEu8n+zp
	 pXFZ/ZUBT32najFvIqw7GCHziTZkdsBaTynoyBRF/4Ze2VgEI7g1blv2zWJONPvOgv
	 qIQftLf0MX6sXTHmsuKvs3o6F0tEn8vtJUE0faT/opWmjdYwzzMCkN/2UAivM4DmWH
	 MFHdzGKpB8N4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAE86C77B61
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 23:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168246456581.14055.2074051358681210983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92c53c339eae547ec281ea977f8937936df4f04181f1f5e5ad4aac58d1b86b99
Date: Tue, 25 Apr 2023 23:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682464565
