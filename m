Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A7DB11700
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 21:23:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7525C433C8
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 21:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691788988;
	bh=G1nXyP2Hx89BK+R/KJfFqA7LCOB/Jdt80r132ZI/1NU=;
	h=To:Subject:From:Date:From;
	b=eBmgRLfYCzg+gG41V2GZVSJMijgHhUWDsKM6Cwgp9kYvyVWBYCwAP3KxeTdIkYvTb
	 F49sh5HEHnZotnpZUSkm5YUv3IGRpngX9dr64+qvOhEnQL/9tOB3YyLMrN4aLUepx9
	 0AzeHsLr1bqbOeurrLt2xNobWUFC1GJzD7jadD6ip3jLky7OmERvkmZ3C6kpvKzMDv
	 nRWQRs2imWcfUvIfL1iFN/6yJATCHF18CwlxjyLt7ZfIwMFoCiJrDbyCVaYpHui4fr
	 gJOJLS7+AvoqT4WJci+h4ofMxziQSr4t0k4dckrCvKHIEbKd+NcLSR10Jik9kZO50Y
	 VgqNpUwM1Qt9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6CB2C0015E
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 21:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169178898867.18374.10828013653538846370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09f5ad369d638222634c1f4f80864d9774ce1fc0cc379ab11c5e12a9ca87900e
Date: Fri, 11 Aug 2023 21:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691788988
